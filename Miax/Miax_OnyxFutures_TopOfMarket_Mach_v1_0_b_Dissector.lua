-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures TopOfMarket Mach 1.0.b Protocol
local omi_miax_onyxfutures_topofmarket_mach_v1_0_b = Proto("Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.Lua", "Miax OnyxFutures TopOfMarket Mach 1.0.b")

-- Protocol table
local miax_onyxfutures_topofmarket_mach_v1_0_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures TopOfMarket Mach 1.0.b Fields
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.applicationmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.topofmarket.mach.v1.0.b.correctionnumber", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.currency = ProtoField.new("Currency", "miax.onyxfutures.topofmarket.mach.v1.0.b.currency", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.data = ProtoField.new("Data", "miax.onyxfutures.topofmarket.mach.v1.0.b.data", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.exchange = ProtoField.new("Exchange", "miax.onyxfutures.topofmarket.mach.v1.0.b.exchange", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.high_limit_price = ProtoField.new("High Limit Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.highlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_id_source = ProtoField.new("Instrument Id Source", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentidsource", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_leg = ProtoField.new("Instrument Leg", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentleg", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_type = ProtoField.new("Instrument Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumenttype", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.leg_ratio_and_side = ProtoField.new("Leg Ratio And Side", "miax.onyxfutures.topofmarket.mach.v1.0.b.legratioandside", ftypes.INT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.low_limit_price = ProtoField.new("Low Limit Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.lowlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.market_state = ProtoField.new("Market State", "miax.onyxfutures.topofmarket.mach.v1.0.b.marketstate", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.match_algorithm = ProtoField.new("Match Algorithm", "miax.onyxfutures.topofmarket.mach.v1.0.b.matchalgorithm", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "miax.onyxfutures.topofmarket.mach.v1.0.b.maturitymonthyear", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.maximum_size = ProtoField.new("Maximum Size", "miax.onyxfutures.topofmarket.mach.v1.0.b.maximumsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbb_price = ProtoField.new("Mbb Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbb_size = ProtoField.new("Mbb Size", "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbo_price = ProtoField.new("Mbo Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.mboprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbo_size = ProtoField.new("Mbo Size", "miax.onyxfutures.topofmarket.mach.v1.0.b.mbosize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.message = ProtoField.new("Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.message", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.messagetype", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.minimum_size = ProtoField.new("Minimum Size", "miax.onyxfutures.topofmarket.mach.v1.0.b.minimumsize", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.topofmarket.mach.v1.0.b.numberoflegs", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.open_interest_quantity = ProtoField.new("Open Interest Quantity", "miax.onyxfutures.topofmarket.mach.v1.0.b.openinterestquantity", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.topofmarket.mach.v1.0.b.packet", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.topofmarket.mach.v1.0.b.packetlength", ftypes.UINT16)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.packettype", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.topofmarket.mach.v1.0.b.payload", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.price = ProtoField.new("Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.price", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyxfutures.topofmarket.mach.v1.0.b.productgroupcode", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.topofmarket.mach.v1.0.b.reserved16", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.onyxfutures.topofmarket.mach.v1.0.b.reserved8", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.topofmarket.mach.v1.0.b.sequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionid", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionnumber", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_currency = ProtoField.new("Settlement Currency", "miax.onyxfutures.topofmarket.mach.v1.0.b.settlementcurrency", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_price = ProtoField.new("Settlement Price", "miax.onyxfutures.topofmarket.mach.v1.0.b.settlementprice", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method = ProtoField.new("Settlement Price Type Calc Method", "miax.onyxfutures.topofmarket.mach.v1.0.b.settlementpricetypecalcmethod", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.size = ProtoField.new("Size", "miax.onyxfutures.topofmarket.mach.v1.0.b.size", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.spread_type = ProtoField.new("Spread Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.spreadtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.strategy_id = ProtoField.new("Strategy Id", "miax.onyxfutures.topofmarket.mach.v1.0.b.strategyid", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.tick = ProtoField.new("Tick", "miax.onyxfutures.topofmarket.mach.v1.0.b.tick", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.timestamp = ProtoField.new("Timestamp", "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp", ftypes.UINT64)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.tom_version = ProtoField.new("Tom Version", "miax.onyxfutures.topofmarket.mach.v1.0.b.tomversion", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.total_volume = ProtoField.new("Total Volume", "miax.onyxfutures.topofmarket.mach.v1.0.b.totalvolume", ftypes.UINT32)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradedate", ftypes.UINT16)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_id = ProtoField.new("Trade Id", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradeid", ftypes.UINT64)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_collar_variation = ProtoField.new("Trading Collar Variation", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingcollarvariation", ftypes.DOUBLE)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_collar_variation_type = ProtoField.new("Trading Collar Variation Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingcollarvariationtype", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_status = ProtoField.new("Trading Status", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingstatus", ftypes.UINT8)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.underlying_asset = ProtoField.new("Underlying Asset", "miax.onyxfutures.topofmarket.mach.v1.0.b.underlyingasset", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.underlying_asset_type = ProtoField.new("Underlying Asset Type", "miax.onyxfutures.topofmarket.mach.v1.0.b.underlyingassettype", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "miax.onyxfutures.topofmarket.mach.v1.0.b.unitofmeasure", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.unit_of_measure_quantity = ProtoField.new("Unit Of Measure Quantity", "miax.onyxfutures.topofmarket.mach.v1.0.b.unitofmeasurequantity", ftypes.UINT32)

-- Miax OnyxFutures TopOfMarket Mach 1.0.b messages
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.best_bid_and_offer_message = ProtoField.new("Best Bid And Offer Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.bestbidandoffermessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.complexinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message = ProtoField.new("Instrument Trading Status Notification Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumenttradingstatusnotificationmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.lastsalemessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.simple_instrument_definition_message = ProtoField.new("Simple Instrument Definition Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.simpleinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.system_state_message = ProtoField.new("System State Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatemessage", ftypes.STRING)
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.onyxfutures.topofmarket.mach.v1.0.b.tradecancelmessage", ftypes.STRING)

-- Miax OnyxFutures TopOfMarket Mach 1.0.b generated fields
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentlegindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures TopOfMarket Mach 1.0.b Element Dissection Options
show.application_message = true
show.best_bid_and_offer_message = true
show.complex_instrument_definition_message = true
show.instrument_leg = true
show.instrument_trading_status_notification_message = true
show.last_sale_message = true
show.message = true
show.packet = true
show.simple_instrument_definition_message = true
show.system_state_message = true
show.trade_cancel_message = true
show.data = false
show.payload = false

-- Register Miax OnyxFutures TopOfMarket Mach 1.0.b Show Options
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_best_bid_and_offer_message = Pref.bool("Show Best Bid And Offer Message", show.best_bid_and_offer_message, "Parse and add Best Bid And Offer Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message = Pref.bool("Show Complex Instrument Definition Message", show.complex_instrument_definition_message, "Parse and add Complex Instrument Definition Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_leg = Pref.bool("Show Instrument Leg", show.instrument_leg, "Parse and add Instrument Leg to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message = Pref.bool("Show Instrument Trading Status Notification Message", show.instrument_trading_status_notification_message, "Parse and add Instrument Trading Status Notification Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_last_sale_message = Pref.bool("Show Last Sale Message", show.last_sale_message, "Parse and add Last Sale Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message = Pref.bool("Show Simple Instrument Definition Message", show.simple_instrument_definition_message, "Parse and add Simple Instrument Definition Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_application_message then
    show.application_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_application_message
    changed = true
  end
  if show.best_bid_and_offer_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_best_bid_and_offer_message then
    show.best_bid_and_offer_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_best_bid_and_offer_message
    changed = true
  end
  if show.complex_instrument_definition_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message then
    show.complex_instrument_definition_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message
    changed = true
  end
  if show.instrument_leg ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_leg then
    show.instrument_leg = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_leg
    changed = true
  end
  if show.instrument_trading_status_notification_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message then
    show.instrument_trading_status_notification_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message
    changed = true
  end
  if show.last_sale_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_last_sale_message then
    show.last_sale_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_last_sale_message
    changed = true
  end
  if show.message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_message then
    show.message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_packet then
    show.packet = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_packet
    changed = true
  end
  if show.simple_instrument_definition_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message then
    show.simple_instrument_definition_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_system_state_message then
    show.system_state_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_system_state_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_trade_cancel_message
    changed = true
  end
  if show.data ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_data then
    show.data = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_payload then
    show.payload = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.prefs.show_payload
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
-- Dissect Miax OnyxFutures TopOfMarket Mach 1.0.b
-----------------------------------------------------------------------

-- Size
miax_onyxfutures_topofmarket_mach_v1_0_b.size = {}

-- Size: Size
miax_onyxfutures_topofmarket_mach_v1_0_b.size.size = 4

-- Display: Size
miax_onyxfutures_topofmarket_mach_v1_0_b.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyxfutures_topofmarket_mach_v1_0_b.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.size, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_topofmarket_mach_v1_0_b.price = {}

-- Size: Price
miax_onyxfutures_topofmarket_mach_v1_0_b.price.size = 8

-- Display: Price
miax_onyxfutures_topofmarket_mach_v1_0_b.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_topofmarket_mach_v1_0_b.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_topofmarket_mach_v1_0_b.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.price, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id = {}

-- Size: Trade Id
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.size = 8

-- Display: Trade Id
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Instrument Id
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id = {}

-- Size: Instrument Id
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size = 4

-- Display: Instrument Id
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp = {}

-- Size: Timestamp
miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size = 8

-- Display: Timestamp
miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.size.size

-- Display: Trade Cancel Message
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_topofmarket_mach_v1_0_b.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_topofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_topofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message = {}

-- Size: Last Sale Message
miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.size.size

-- Display: Last Sale Message
miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_topofmarket_mach_v1_0_b.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_topofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_topofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.last_sale_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.last_sale_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbo Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size = {}

-- Size: Mbo Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.size = 4

-- Display: Mbo Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.display = function(value)
  return "Mbo Size: "..value
end

-- Dissect: Mbo Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbo_size, range, value, display)

  return offset + length, value
end

-- Mbo Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price = {}

-- Size: Mbo Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.size = 8

-- Display: Mbo Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.display = function(value)
  return "Mbo Price: "..value
end

-- Translate: Mbo Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Mbo Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbo_price, range, value, display)

  return offset + length, value
end

-- Mbb Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size = {}

-- Size: Mbb Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.size = 4

-- Display: Mbb Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.display = function(value)
  return "Mbb Size: "..value
end

-- Dissect: Mbb Size
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbb_size, range, value, display)

  return offset + length, value
end

-- Mbb Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price = {}

-- Size: Mbb Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.size = 8

-- Display: Mbb Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.display = function(value)
  return "Mbb Price: "..value
end

-- Translate: Mbb Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Mbb Price
miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.mbb_price, range, value, display)

  return offset + length, value
end

-- Best Bid And Offer Message
miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message = {}

-- Size: Best Bid And Offer Message
miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.size

-- Display: Best Bid And Offer Message
miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Offer Message
miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Mbb Price: Price9S
  index, mbb_price = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_price.dissect(buffer, index, packet, parent)

  -- Mbb Size: BinaryU
  index, mbb_size = miax_onyxfutures_topofmarket_mach_v1_0_b.mbb_size.dissect(buffer, index, packet, parent)

  -- Mbo Price: Price9S
  index, mbo_price = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_price.dissect(buffer, index, packet, parent)

  -- Mbo Size: BinaryU
  index, mbo_size = miax_onyxfutures_topofmarket_mach_v1_0_b.mbo_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Offer Message
miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_and_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State
miax_onyxfutures_topofmarket_mach_v1_0_b.market_state = {}

-- Size: Market State
miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.size = 1

-- Display: Market State
miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.display = function(value)
  if value == 1 then
    return "Market State: Pre Opening (1)"
  end
  if value == 2 then
    return "Market State: Extended 1 Trading Session (2)"
  end
  if value == 3 then
    return "Market State: Regular Trading Session (3)"
  end
  if value == 4 then
    return "Market State: Extended 2 Trading Session (4)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.market_state, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status = {}

-- Size: Trading Status
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.size = 1

-- Display: Trading Status
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.display = function(value)
  if value == 1 then
    return "Trading Status: Pre Open (1)"
  end
  if value == 2 then
    return "Trading Status: Opening Freeze (2)"
  end
  if value == 3 then
    return "Trading Status: Trading (3)"
  end
  if value == 4 then
    return "Trading Status: Halt (4)"
  end
  if value == 5 then
    return "Trading Status: Operational Halt (5)"
  end
  if value == 6 then
    return "Trading Status: Closed (6)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status Notification Message
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message = {}

-- Size: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.size

-- Display: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_onyxfutures_topofmarket_mach_v1_0_b.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Notification Message
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_trading_status_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_onyxfutures_topofmarket_mach_v1_0_b.system_status = {}

-- Size: System Status
miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.size = 1

-- Display: System Status
miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.display = function(value)
  if value == "S" then
    return "System Status: Start Of System Hours (S)"
  end
  if value == "C" then
    return "System Status: End Of System Hours (C)"
  end
  if value == "1" then
    return "System Status: Start Of Test Session (1)"
  end
  if value == "2" then
    return "System Status: End Of Test Session (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_topofmarket_mach_v1_0_b.session_id = {}

-- Size: Session Id
miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.session_id, range, value, display)

  return offset + length, value
end

-- Tom Version
miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version = {}

-- Size: Tom Version
miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.size = 8

-- Display: Tom Version
miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.display = function(value)
  return "Tom Version: "..value
end

-- Dissect: Tom Version
miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.tom_version, range, value, display)

  return offset + length, value
end

-- System State Message
miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message = {}

-- Size: System State Message
miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.size

-- Display: System State Message
miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Tom Version: Alphanumeric
  index, tom_version = miax_onyxfutures_topofmarket_mach_v1_0_b.tom_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_topofmarket_mach_v1_0_b.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_topofmarket_mach_v1_0_b.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.system_state_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 8
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8 = {}

-- Size: Reserved 8
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.size = 8

-- Display: Reserved 8
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year = {}

-- Size: Maturity Month Year
miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.size = 4

-- Display: Maturity Month Year
miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.display = function(value)
  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Leg Ratio And Side
miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side = {}

-- Size: Leg Ratio And Side
miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.size = 4

-- Display: Leg Ratio And Side
miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.display = function(value)
  return "Leg Ratio And Side: "..value
end

-- Dissect: Leg Ratio And Side
miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.leg_ratio_and_side, range, value, display)

  return offset + length, value
end

-- Instrument Leg
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg = {}

-- Size: Instrument Leg
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.size

-- Display: Instrument Leg
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil then
    local iteration = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio And Side: BinaryS
  index, leg_ratio_and_side = miax_onyxfutures_topofmarket_mach_v1_0_b.leg_ratio_and_side.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: BinaryU
  index, maturity_month_year = miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Number Of Legs
miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation = {}

-- Size: Trading Collar Variation
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.size = 8

-- Display: Trading Collar Variation
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.display = function(value)
  return "Trading Collar Variation: "..value
end

-- Translate: Trading Collar Variation
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Variation
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_collar_variation, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation Type
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type = {}

-- Size: Trading Collar Variation Type
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.size = 1

-- Display: Trading Collar Variation Type
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.display = function(value)
  if value == "D" then
    return "Trading Collar Variation Type: Product Dollar Collar Value (D)"
  end
  if value == "P" then
    return "Trading Collar Variation Type: Product Collar Percentage Value (P)"
  end
  if value == "S" then
    return "Trading Collar Variation Type: Standard Calendar Spread (S)"
  end
  if value == "E" then
    return "Trading Collar Variation Type: Equity Calendar Spread (E)"
  end
  if value == "B" then
    return "Trading Collar Variation Type: Butterfly Spread (B)"
  end

  return "Trading Collar Variation Type: Unknown("..value..")"
end

-- Dissect: Trading Collar Variation Type
miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.trading_collar_variation_type, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity = {}

-- Size: Unit Of Measure Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.size = 4

-- Display: Unit Of Measure Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.display = function(value)
  return "Unit Of Measure Quantity: "..value
end

-- Dissect: Unit Of Measure Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.unit_of_measure_quantity, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure = {}

-- Size: Unit Of Measure
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.size = 5

-- Display: Unit Of Measure
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.display = function(value)
  if value == "BU" then
    return "Unit Of Measure: Bushels (BU)"
  end
  if value == "USD" then
    return "Unit Of Measure: Price Then Time (USD)"
  end

  return "Unit Of Measure: Unknown("..value..")"
end

-- Dissect: Unit Of Measure
miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Tick
miax_onyxfutures_topofmarket_mach_v1_0_b.tick = {}

-- Size: Tick
miax_onyxfutures_topofmarket_mach_v1_0_b.tick.size = 8

-- Display: Tick
miax_onyxfutures_topofmarket_mach_v1_0_b.tick.display = function(value)
  return "Tick: "..value
end

-- Translate: Tick
miax_onyxfutures_topofmarket_mach_v1_0_b.tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Tick
miax_onyxfutures_topofmarket_mach_v1_0_b.tick.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.tick.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.tick, range, value, display)

  return offset + length, value
end

-- Maximum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size = {}

-- Size: Maximum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.size = 4

-- Display: Maximum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.display = function(value)
  return "Maximum Size: "..value
end

-- Dissect: Maximum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.maximum_size, range, value, display)

  return offset + length, value
end

-- Minimum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size = {}

-- Size: Minimum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.size = 4

-- Display: Minimum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.display = function(value)
  return "Minimum Size: "..value
end

-- Dissect: Minimum Size
miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.minimum_size, range, value, display)

  return offset + length, value
end

-- Match Algorithm
miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm = {}

-- Size: Match Algorithm
miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.size = 1

-- Display: Match Algorithm
miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.display = function(value)
  if value == "P" then
    return "Match Algorithm: Price Then Time (P)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Settlement Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency = {}

-- Size: Settlement Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.size = 1

-- Display: Settlement Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.display = function(value)
  if value == "U" then
    return "Settlement Currency: Usd (U)"
  end

  return "Settlement Currency: Unknown("..value..")"
end

-- Dissect: Settlement Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.currency = {}

-- Size: Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.currency.size = 1

-- Display: Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.currency.display = function(value)
  if value == "USD" then
    return "Currency: U (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
miax_onyxfutures_topofmarket_mach_v1_0_b.currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.currency, range, value, display)

  return offset + length, value
end

-- Instrument Type
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type = {}

-- Size: Instrument Type
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.size = 1

-- Display: Instrument Type
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.display = function(value)
  if value == "F" then
    return "Instrument Type: Futures (F)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Instrument Id Source
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source = {}

-- Size: Instrument Id Source
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.size = 1

-- Display: Instrument Id Source
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.display = function(value)
  if value == "E" then
    return "Instrument Id Source: Exchange (E)"
  end

  return "Instrument Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Id Source
miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.instrument_id_source, range, value, display)

  return offset + length, value
end

-- Exchange
miax_onyxfutures_topofmarket_mach_v1_0_b.exchange = {}

-- Size: Exchange
miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.size = 4

-- Display: Exchange
miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.display = function(value)
  if value == "XMGE" then
    return "Exchange: Miax Futures Exchange (XMGE)"
  end

  return "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.exchange, range, value, display)

  return offset + length, value
end

-- Spread Type
miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type = {}

-- Size: Spread Type
miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.size = 1

-- Display: Spread Type
miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.display = function(value)
  return "Spread Type: "..value
end

-- Dissect: Spread Type
miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.spread_type, range, value, display)

  return offset + length, value
end

-- Product Group Code
miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code = {}

-- Size: Product Group Code
miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.size = 6

-- Display: Product Group Code
miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.display = function(value)
  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Underlying Asset
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset = {}

-- Size: Underlying Asset
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.size = 4

-- Display: Underlying Asset
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.display = function(value)
  return "Underlying Asset: "..value
end

-- Dissect: Underlying Asset
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.underlying_asset, range, value, display)

  return offset + length, value
end

-- Underlying Asset Type
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type = {}

-- Size: Underlying Asset Type
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.size = 1

-- Display: Underlying Asset Type
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.display = function(value)
  if value == "E" then
    return "Underlying Asset Type: Equity Index (E)"
  end
  if value == "A" then
    return "Underlying Asset Type: Commodity Agriculture (A)"
  end

  return "Underlying Asset Type: Unknown("..value..")"
end

-- Dissect: Underlying Asset Type
miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.underlying_asset_type, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id = {}

-- Size: Strategy Id
miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.size = 4

-- Display: Strategy Id
miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message = {}

-- Calculate size of: Complex Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.currency.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.tick.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_leg_count * 20

  return index
end

-- Display: Complex Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_onyxfutures_topofmarket_mach_v1_0_b.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset: Alphanumeric
  index, underlying_asset = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.dissect(buffer, index, packet, parent)

  -- Product Group Code: Alphanumeric
  index, product_group_code = miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_topofmarket_mach_v1_0_b.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_topofmarket_mach_v1_0_b.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_topofmarket_mach_v1_0_b.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_topofmarket_mach_v1_0_b.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_instrument_definition_message then
    local length = miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.complex_instrument_definition_message, range, display)
  end

  return miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
end

-- Low Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price = {}

-- Size: Low Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.size = 8

-- Display: Low Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- High Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price = {}

-- Size: High Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.size = 8

-- Display: High Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Open Interest Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity = {}

-- Size: Open Interest Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.size = 4

-- Display: Open Interest Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.display = function(value)
  return "Open Interest Quantity: "..value
end

-- Dissect: Open Interest Quantity
miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.open_interest_quantity, range, value, display)

  return offset + length, value
end

-- Total Volume
miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume = {}

-- Size: Total Volume
miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.size = 4

-- Display: Total Volume
miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Settlement Price Type Calc Method
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method = {}

-- Size: Settlement Price Type Calc Method
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.size = 1

-- Display: Settlement Price Type Calc Method
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.display = function(value)
  if value == "A" then
    return "Settlement Price Type Calc Method: Actual (A)"
  end
  if value == "T" then
    return "Settlement Price Type Calc Method: Theoretical (T)"
  end

  return "Settlement Price Type Calc Method: Unknown("..value..")"
end

-- Dissect: Settlement Price Type Calc Method
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method, range, value, display)

  return offset + length, value
end

-- Settlement Price
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price = {}

-- Size: Settlement Price
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.size = 8

-- Display: Settlement Price
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.translate(raw)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Simple Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message = {}

-- Size: Simple Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.size =
  miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.currency.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.tick.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.size + 
  miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.size

-- Display: Simple Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_topofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset: Alphanumeric
  index, underlying_asset = miax_onyxfutures_topofmarket_mach_v1_0_b.underlying_asset.dissect(buffer, index, packet, parent)

  -- Product Group Code: Alphanumeric
  index, product_group_code = miax_onyxfutures_topofmarket_mach_v1_0_b.product_group_code.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_topofmarket_mach_v1_0_b.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: BinaryU
  index, maturity_month_year = miax_onyxfutures_topofmarket_mach_v1_0_b.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_topofmarket_mach_v1_0_b.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_topofmarket_mach_v1_0_b.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_topofmarket_mach_v1_0_b.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_topofmarket_mach_v1_0_b.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_topofmarket_mach_v1_0_b.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_topofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_topofmarket_mach_v1_0_b.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_topofmarket_mach_v1_0_b.total_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_topofmarket_mach_v1_0_b.open_interest_quantity.dissect(buffer, index, packet, parent)

  -- High Limit Price: Price9S
  index, high_limit_price = miax_onyxfutures_topofmarket_mach_v1_0_b.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: Price9S
  index, low_limit_price = miax_onyxfutures_topofmarket_mach_v1_0_b.low_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_topofmarket_mach_v1_0_b.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_topofmarket_mach_v1_0_b.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Definition Message
miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.simple_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.simple_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_onyxfutures_topofmarket_mach_v1_0_b.data = {}

-- Calculate runtime size of: Data
miax_onyxfutures_topofmarket_mach_v1_0_b.data.size = function(buffer, offset, message_type)
  -- Size of Simple Instrument Definition Message
  if message_type == 1 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.size(buffer, offset)
  end
  -- Size of Complex Instrument Definition Message
  if message_type == 2 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == 3 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.size(buffer, offset)
  end
  -- Size of Instrument Trading Status Notification Message
  if message_type == 4 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.size(buffer, offset)
  end
  -- Size of Best Bid And Offer Message
  if message_type == 15 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.size(buffer, offset)
  end
  -- Size of Last Sale Message
  if message_type == 16 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == 14 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_onyxfutures_topofmarket_mach_v1_0_b.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_onyxfutures_topofmarket_mach_v1_0_b.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Simple Instrument Definition Message
  if message_type == 1 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.simple_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Message
  if message_type == 2 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == 3 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Notification Message
  if message_type == 4 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.instrument_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Offer Message
  if message_type == 15 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.best_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == 16 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 14 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_onyxfutures_topofmarket_mach_v1_0_b.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_topofmarket_mach_v1_0_b.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.data, range, display)

  return miax_onyxfutures_topofmarket_mach_v1_0_b.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_onyxfutures_topofmarket_mach_v1_0_b.message_type = {}

-- Size: Message Type
miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Simple Instrument Definition Message (1)"
  end
  if value == 2 then
    return "Message Type: Complex Instrument Definition Message (2)"
  end
  if value == 3 then
    return "Message Type: System State Message (3)"
  end
  if value == 4 then
    return "Message Type: Instrument Trading Status Notification Message (4)"
  end
  if value == 15 then
    return "Message Type: Best Bid And Offer Message (15)"
  end
  if value == 16 then
    return "Message Type: Last Sale Message (16)"
  end
  if value == 14 then
    return "Message Type: Trade Cancel Message (14)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_onyxfutures_topofmarket_mach_v1_0_b.application_message = {}

-- Read runtime size of: Application Message
miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, message_type = miax_onyxfutures_topofmarket_mach_v1_0_b.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 7 branches
  index = miax_onyxfutures_topofmarket_mach_v1_0_b.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.application_message, range, display)
  end

  miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_onyxfutures_topofmarket_mach_v1_0_b.payload = {}

-- Calculate runtime size of: Payload
miax_onyxfutures_topofmarket_mach_v1_0_b.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_onyxfutures_topofmarket_mach_v1_0_b.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_topofmarket_mach_v1_0_b.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_onyxfutures_topofmarket_mach_v1_0_b.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_topofmarket_mach_v1_0_b.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_topofmarket_mach_v1_0_b.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.payload, range, display)

  return miax_onyxfutures_topofmarket_mach_v1_0_b.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_onyxfutures_topofmarket_mach_v1_0_b.session_number = {}

-- Size: Session Number
miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.size = 1

-- Display: Session Number
miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.display = function(value)
  if value == 0 then
    return "Packet Type: Heartbeat (0)"
  end
  if value == 1 then
    return "Packet Type: Start Of Session (1)"
  end
  if value == 2 then
    return "Packet Type: End Of Session (2)"
  end
  if value == 3 then
    return "Packet Type: Application Message (3)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_onyxfutures_topofmarket_mach_v1_0_b.message = {}

-- Calculate size of: Message
miax_onyxfutures_topofmarket_mach_v1_0_b.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.size

  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):uint()
  index = index + miax_onyxfutures_topofmarket_mach_v1_0_b.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_onyxfutures_topofmarket_mach_v1_0_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_onyxfutures_topofmarket_mach_v1_0_b.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_topofmarket_mach_v1_0_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_topofmarket_mach_v1_0_b.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_topofmarket_mach_v1_0_b.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_onyxfutures_topofmarket_mach_v1_0_b.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_onyxfutures_topofmarket_mach_v1_0_b.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_onyxfutures_topofmarket_mach_v1_0_b.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_topofmarket_mach_v1_0_b.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b.fields.message, range, display)
  end

  return miax_onyxfutures_topofmarket_mach_v1_0_b.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_onyxfutures_topofmarket_mach_v1_0_b.packet = {}

-- Dissect Packet
miax_onyxfutures_topofmarket_mach_v1_0_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_onyxfutures_topofmarket_mach_v1_0_b.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_topofmarket_mach_v1_0_b.init()
end

-- Dissector for Miax OnyxFutures TopOfMarket Mach 1.0.b
function omi_miax_onyxfutures_topofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_topofmarket_mach_v1_0_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_topofmarket_mach_v1_0_b, buffer(), omi_miax_onyxfutures_topofmarket_mach_v1_0_b.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_topofmarket_mach_v1_0_b.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_onyxfutures_topofmarket_mach_v1_0_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_onyxfutures_topofmarket_mach_v1_0_b.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures TopOfMarket Mach 1.0.b
local function omi_miax_onyxfutures_topofmarket_mach_v1_0_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_topofmarket_mach_v1_0_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_topofmarket_mach_v1_0_b
  omi_miax_onyxfutures_topofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures TopOfMarket Mach 1.0.b
omi_miax_onyxfutures_topofmarket_mach_v1_0_b:register_heuristic("udp", omi_miax_onyxfutures_topofmarket_mach_v1_0_b_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0.b
--   Date: Tuesday, March 25, 2025
--   Specification: onyx_tom_feed_v1.0b.pdf
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
