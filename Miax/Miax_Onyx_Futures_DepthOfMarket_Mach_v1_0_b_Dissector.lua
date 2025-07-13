-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Onyx Futures DepthOfMarket Mach 1.0.b Protocol
local miax_onyx_futures_depthofmarket_mach_v1_0_b = Proto("Miax.Onyx.Futures.DepthOfMarket.Mach.v1.0.b.Lua", "Miax Onyx Futures DepthOfMarket Mach 1.0.b")

-- Component Tables
local show = {}
local format = {}
local miax_onyx_futures_depthofmarket_mach_v1_0_b_display = {}
local miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect = {}
local miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Onyx Futures DepthOfMarket Mach 1.0.b Fields
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.add_order_message = ProtoField.new("Add Order Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.addordermessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.aggressor_side = ProtoField.new("Aggressor Side", "miax.onyx.futures.depthofmarket.mach.v1.0.b.aggressorside", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price = ProtoField.new("Anticipated Opening Price", "miax.onyx.futures.depthofmarket.mach.v1.0.b.anticipatedopeningprice", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price_message = ProtoField.new("Anticipated Opening Price Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.anticipatedopeningpricemessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.application_message = ProtoField.new("Application Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.applicationmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.buy_order_id = ProtoField.new("Buy Order Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.buyorderid", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.complexinstrumentdefinitionmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.correction_number = ProtoField.new("Correction Number", "miax.onyx.futures.depthofmarket.mach.v1.0.b.correctionnumber", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.currency = ProtoField.new("Currency", "miax.onyx.futures.depthofmarket.mach.v1.0.b.currency", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.data = ProtoField.new("Data", "miax.onyx.futures.depthofmarket.mach.v1.0.b.data", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.deleteordermessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.exchange = ProtoField.new("Exchange", "miax.onyx.futures.depthofmarket.mach.v1.0.b.exchange", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.flags = ProtoField.new("Flags", "miax.onyx.futures.depthofmarket.mach.v1.0.b.flags", ftypes.INT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.high_limit_price = ProtoField.new("High Limit Price", "miax.onyx.futures.depthofmarket.mach.v1.0.b.highlimitprice", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_clear_message = ProtoField.new("Instrument Clear Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.instrumentclearmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.instrumentid", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_id_source = ProtoField.new("Instrument Id Source", "miax.onyx.futures.depthofmarket.mach.v1.0.b.instrumentidsource", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message = ProtoField.new("Instrument Trading Status Notification Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.instrumenttradingstatusnotificationmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_type = ProtoField.new("Instrument Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.instrumenttype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.low_limit_price = ProtoField.new("Low Limit Price", "miax.onyx.futures.depthofmarket.mach.v1.0.b.lowlimitprice", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.market_state = ProtoField.new("Market State", "miax.onyx.futures.depthofmarket.mach.v1.0.b.marketstate", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.match_algorithm = ProtoField.new("Match Algorithm", "miax.onyx.futures.depthofmarket.mach.v1.0.b.matchalgorithm", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "miax.onyx.futures.depthofmarket.mach.v1.0.b.maturitymonthyear", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.maximum_size = ProtoField.new("Maximum Size", "miax.onyx.futures.depthofmarket.mach.v1.0.b.maximumsize", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.message = ProtoField.new("Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.message", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.message_type = ProtoField.new("Message Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.messagetype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.minimum_size = ProtoField.new("Minimum Size", "miax.onyx.futures.depthofmarket.mach.v1.0.b.minimumsize", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.modifyordermessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyx.futures.depthofmarket.mach.v1.0.b.numberoflegs", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.open_interest_quantity = ProtoField.new("Open Interest Quantity", "miax.onyx.futures.depthofmarket.mach.v1.0.b.openinterestquantity", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.open_interest_update_message = ProtoField.new("Open Interest Update Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.openinterestupdatemessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.opening_match_quantity = ProtoField.new("Opening Match Quantity", "miax.onyx.futures.depthofmarket.mach.v1.0.b.openingmatchquantity", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.orderexecutionmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_id = ProtoField.new("Order Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.orderid", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_side = ProtoField.new("Order Side", "miax.onyx.futures.depthofmarket.mach.v1.0.b.orderside", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_type = ProtoField.new("Order Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.ordertype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.packet = ProtoField.new("Packet", "miax.onyx.futures.depthofmarket.mach.v1.0.b.packet", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.packet_length = ProtoField.new("Packet Length", "miax.onyx.futures.depthofmarket.mach.v1.0.b.packetlength", ftypes.UINT16)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.packet_type = ProtoField.new("Packet Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.packettype", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.payload = ProtoField.new("Payload", "miax.onyx.futures.depthofmarket.mach.v1.0.b.payload", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.price = ProtoField.new("Price", "miax.onyx.futures.depthofmarket.mach.v1.0.b.price", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyx.futures.depthofmarket.mach.v1.0.b.productgroupcode", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyx.futures.depthofmarket.mach.v1.0.b.reserved16", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.sell_order_id = ProtoField.new("Sell Order Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.sellorderid", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyx.futures.depthofmarket.mach.v1.0.b.sequencenumber", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.session_id = ProtoField.new("Session Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.sessionid", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.session_number = ProtoField.new("Session Number", "miax.onyx.futures.depthofmarket.mach.v1.0.b.sessionnumber", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_currency = ProtoField.new("Settlement Currency", "miax.onyx.futures.depthofmarket.mach.v1.0.b.settlementcurrency", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price = ProtoField.new("Settlement Price", "miax.onyx.futures.depthofmarket.mach.v1.0.b.settlementprice", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_type = ProtoField.new("Settlement Price Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.settlementpricetype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method = ProtoField.new("Settlement Price Type Calc Method", "miax.onyx.futures.depthofmarket.mach.v1.0.b.settlementpricetypecalcmethod", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_update_message = ProtoField.new("Settlement Price Update Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.settlementpriceupdatemessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.simple_instrument_definition_message = ProtoField.new("Simple Instrument Definition Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.simpleinstrumentdefinitionmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.size = ProtoField.new("Size", "miax.onyx.futures.depthofmarket.mach.v1.0.b.size", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.spread_type = ProtoField.new("Spread Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.spreadtype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.system_state_message = ProtoField.new("System State Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.systemstatemessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.system_status = ProtoField.new("System Status", "miax.onyx.futures.depthofmarket.mach.v1.0.b.systemstatus", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.tick = ProtoField.new("Tick", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tick", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.timestamp = ProtoField.new("Timestamp", "miax.onyx.futures.depthofmarket.mach.v1.0.b.timestamp", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.total_volume = ProtoField.new("Total Volume", "miax.onyx.futures.depthofmarket.mach.v1.0.b.totalvolume", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.total_volume_update_message = ProtoField.new("Total Volume Update Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.totalvolumeupdatemessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradecancelmessage", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_date = ProtoField.new("Trade Date", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradedate", ftypes.INT16)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_id = ProtoField.new("Trade Id", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradeid", ftypes.UINT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation = ProtoField.new("Trading Collar Variation", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradingcollarvariation", ftypes.INT64)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation_type = ProtoField.new("Trading Collar Variation Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradingcollarvariationtype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_status = ProtoField.new("Trading Status", "miax.onyx.futures.depthofmarket.mach.v1.0.b.tradingstatus", ftypes.UINT8)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.underlying_asset = ProtoField.new("Underlying Asset", "miax.onyx.futures.depthofmarket.mach.v1.0.b.underlyingasset", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.underlying_asset_type = ProtoField.new("Underlying Asset Type", "miax.onyx.futures.depthofmarket.mach.v1.0.b.underlyingassettype", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "miax.onyx.futures.depthofmarket.mach.v1.0.b.unitofmeasure", ftypes.STRING)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.unit_of_measure_quantity = ProtoField.new("Unit Of Measure Quantity", "miax.onyx.futures.depthofmarket.mach.v1.0.b.unitofmeasurequantity", ftypes.UINT32)
miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.version = ProtoField.new("Version", "miax.onyx.futures.depthofmarket.mach.v1.0.b.version", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Onyx Futures DepthOfMarket Mach 1.0.b Element Dissection Options
show.add_order_message = true
show.anticipated_opening_price_message = true
show.application_message = true
show.complex_instrument_definition_message = true
show.delete_order_message = true
show.instrument_clear_message = true
show.instrument_trading_status_notification_message = true
show.message = true
show.modify_order_message = true
show.open_interest_update_message = true
show.order_execution_message = true
show.packet = true
show.settlement_price_update_message = true
show.simple_instrument_definition_message = true
show.system_state_message = true
show.total_volume_update_message = true
show.trade_cancel_message = true
show.data = false
show.payload = false

-- Register Miax Onyx Futures DepthOfMarket Mach 1.0.b Show Options
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message = Pref.bool("Show Anticipated Opening Price Message", show.anticipated_opening_price_message, "Parse and add Anticipated Opening Price Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message = Pref.bool("Show Complex Instrument Definition Message", show.complex_instrument_definition_message, "Parse and add Complex Instrument Definition Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message = Pref.bool("Show Instrument Clear Message", show.instrument_clear_message, "Parse and add Instrument Clear Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message = Pref.bool("Show Instrument Trading Status Notification Message", show.instrument_trading_status_notification_message, "Parse and add Instrument Trading Status Notification Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message = Pref.bool("Show Open Interest Update Message", show.open_interest_update_message, "Parse and add Open Interest Update Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message = Pref.bool("Show Settlement Price Update Message", show.settlement_price_update_message, "Parse and add Settlement Price Update Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message = Pref.bool("Show Simple Instrument Definition Message", show.simple_instrument_definition_message, "Parse and add Simple Instrument Definition Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message = Pref.bool("Show Total Volume Update Message", show.total_volume_update_message, "Parse and add Total Volume Update Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message then
    show.add_order_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message
    changed = true
  end
  if show.anticipated_opening_price_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message then
    show.anticipated_opening_price_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message
    changed = true
  end
  if show.application_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_application_message then
    show.application_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_application_message
    changed = true
  end
  if show.complex_instrument_definition_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message then
    show.complex_instrument_definition_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message
    changed = true
  end
  if show.delete_order_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message then
    show.delete_order_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message
    changed = true
  end
  if show.instrument_clear_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message then
    show.instrument_clear_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message
    changed = true
  end
  if show.instrument_trading_status_notification_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message then
    show.instrument_trading_status_notification_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message
    changed = true
  end
  if show.message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_message then
    show.message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_message
    changed = true
  end
  if show.modify_order_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message then
    show.modify_order_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message
    changed = true
  end
  if show.open_interest_update_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message then
    show.open_interest_update_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message
    changed = true
  end
  if show.order_execution_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message then
    show.order_execution_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_packet then
    show.packet = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_packet
    changed = true
  end
  if show.settlement_price_update_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message then
    show.settlement_price_update_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message
    changed = true
  end
  if show.simple_instrument_definition_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message then
    show.simple_instrument_definition_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message
    changed = true
  end
  if show.system_state_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message then
    show.system_state_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message
    changed = true
  end
  if show.total_volume_update_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message then
    show.total_volume_update_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message
    changed = true
  end
  if show.trade_cancel_message ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message then
    show.trade_cancel_message = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message
    changed = true
  end
  if show.data ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_data then
    show.data = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_payload then
    show.payload = miax_onyx_futures_depthofmarket_mach_v1_0_b.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Onyx Futures DepthOfMarket Mach 1.0.b
-----------------------------------------------------------------------

-- Size: Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size = 4

-- Display: Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.size = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.size(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price = 8

-- Display: Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.price = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.price(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.correction_number = 1

-- Display: Correction Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_id = 8

-- Display: Trade Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id = 4

-- Display: Instrument Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date = 2

-- Display: Trade Date
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp = 8

-- Display: Timestamp
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.correction_number

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size

  return index
end

-- Display: Trade Cancel Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Signed Fixed Width Integer
  index, trade_date = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trade_cancel_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.aggressor_side = 1

-- Display: Aggressor Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.aggressor_side = function(value)
  if value == "B" then
    return "Aggressor Side: Buy (B)"
  end
  if value == "S" then
    return "Aggressor Side: Sell (S)"
  end
  if value == "N" then
    return "Aggressor Side: Not Applicable (N)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Sell Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sell_order_id = 8

-- Display: Sell Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.sell_order_id = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.sell_order_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sell_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.sell_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buy Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.buy_order_id = 8

-- Display: Buy Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.buy_order_id = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.buy_order_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.buy_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.buy_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Execution Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_execution_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.buy_order_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sell_order_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.aggressor_side

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.correction_number

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size

  return index
end

-- Display: Order Execution Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Signed Fixed Width Integer
  index, trade_date = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Buy Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buy_order_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.buy_order_id(buffer, index, packet, parent)

  -- Sell Order Id: 8 Byte Unsigned Fixed Width Integer
  index, sell_order_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.sell_order_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Ascii String Enum with 3 values
  index, aggressor_side = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.aggressor_side(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_execution_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_execution_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_id = 8

-- Display: Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_id

  return index
end

-- Display: Delete Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.delete_order_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.delete_order_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Flags
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.flags = 1

-- Display: Flags
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.flags = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.flags = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.flags
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.flags(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.flags, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.flags

  return index
end

-- Display: Modify Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.size(buffer, index, packet, parent)

  -- Flags: 1 Byte Signed Fixed Width Integer
  index, flags = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.modify_order_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.modify_order_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_side = 1

-- Display: Order Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_side = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_side(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Order Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_type = 1

-- Display: Order Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_type = function(value)
  if value == "S" then
    return "Order Type: Simple Order (S)"
  end
  if value == "C" then
    return "Order Type: Complex Order (C)"
  end
  if value == "D" then
    return "Order Type: Derived Order (D)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.order_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.order_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_side

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.size

  return index
end

-- Display: Add Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String Enum with 3 values
  index, order_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_type(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_id(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_side(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.add_order_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.add_order_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Clear Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_clear_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  return index
end

-- Display: Instrument Clear Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Clear Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Clear Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_clear_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_clear_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_clear_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Volume
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume = 4

-- Display: Total Volume
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Total Volume Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume

  return index
end

-- Display: Total Volume Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.total_volume_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Total Volume Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Signed Fixed Width Integer
  index, trade_date = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Volume Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.total_volume_update_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.total_volume_update_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.total_volume_update_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Open Interest Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_quantity = 4

-- Display: Open Interest Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.open_interest_quantity = function(value)
  return "Open Interest Quantity: "..value
end

-- Dissect: Open Interest Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_quantity = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.open_interest_quantity(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.open_interest_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Open Interest Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_quantity

  return index
end

-- Display: Open Interest Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.open_interest_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Signed Fixed Width Integer
  index, trade_date = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Open Interest Quantity: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_quantity = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_update_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.open_interest_update_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.open_interest_update_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Price Type Calc Method
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type_calc_method = 1

-- Display: Settlement Price Type Calc Method
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_type_calc_method = function(value)
  if value == "A" then
    return "Settlement Price Type Calc Method: Actual (A)"
  end
  if value == "T" then
    return "Settlement Price Type Calc Method: Theoretical (T)"
  end

  return "Settlement Price Type Calc Method: Unknown("..value..")"
end

-- Dissect: Settlement Price Type Calc Method
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_type_calc_method = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type_calc_method
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_type_calc_method(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type = 1

-- Display: Settlement Price Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_type = function(value)
  if value == "D" then
    return "Settlement Price Type: Daily (D)"
  end
  if value == "F" then
    return "Settlement Price Type: Final (F)"
  end

  return "Settlement Price Type: Unknown("..value..")"
end

-- Dissect: Settlement Price Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price = 8

-- Display: Settlement Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Settlement Price Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_date

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type_calc_method

  return index
end

-- Display: Settlement Price Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Settlement Price Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Signed Fixed Width Integer
  index, trade_date = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_date(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index, settlement_price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Type: 1 Byte Ascii String Enum with 2 values
  index, settlement_price_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_type(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: 1 Byte Ascii String Enum with 2 values
  index, settlement_price_type_calc_method = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_type_calc_method(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Price Update Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.settlement_price_update_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_price_update_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_price_update_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Opening Match Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.opening_match_quantity = 4

-- Display: Opening Match Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.opening_match_quantity = function(value)
  return "Opening Match Quantity: "..value
end

-- Dissect: Opening Match Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.opening_match_quantity = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.opening_match_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.opening_match_quantity(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.opening_match_quantity, range, value, display)

  return offset + length, value
end

-- Size: Anticipated Opening Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price = 8

-- Display: Anticipated Opening Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.anticipated_opening_price = function(value)
  return "Anticipated Opening Price: "..value
end

-- Dissect: Anticipated Opening Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.anticipated_opening_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Anticipated Opening Price Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.opening_match_quantity

  return index
end

-- Display: Anticipated Opening Price Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.anticipated_opening_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Anticipated Opening Price Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Anticipated Opening Price: 8 Byte Signed Fixed Width Integer
  index, anticipated_opening_price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price(buffer, index, packet, parent)

  -- Opening Match Quantity: 4 Byte Unsigned Fixed Width Integer
  index, opening_match_quantity = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.opening_match_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Anticipated Opening Price Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.anticipated_opening_price_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.anticipated_opening_price_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Market State
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.market_state = 1

-- Display: Market State
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.market_state = function(value)
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
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.market_state = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.market_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.market_state(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_status = 1

-- Display: Trading Status
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_status = function(value)
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
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Trading Status Notification Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_trading_status_notification_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_status

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.market_state

  return index
end

-- Display: Instrument Trading Status Notification Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_trading_status_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Trading Status Notification Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_trading_status_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_status = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_status(buffer, index, packet, parent)

  -- Market State: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_state = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.market_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Notification Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_trading_status_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_trading_status_notification_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_trading_status_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_trading_status_notification_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_trading_status_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_status = 1

-- Display: System Status
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.system_status = function(value)
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
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_id = 1

-- Display: Session Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Version
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.version = 8

-- Display: Version
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.version = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.version
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.version(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.version

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_status

  return index
end

-- Display: System State Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Version: 8 Byte Ascii String
  index, version = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.version(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index, system_status = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.system_state_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Legs
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.number_of_legs = 1

-- Display: Number Of Legs
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Reserved 16
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.reserved_16 = 16

-- Display: Reserved 16
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.reserved_16 = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.reserved_16 = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.reserved_16
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.reserved_16(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Size: Trading Collar Variation
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation = 8

-- Display: Trading Collar Variation
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_collar_variation = function(value)
  return "Trading Collar Variation: "..value
end

-- Dissect: Trading Collar Variation
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_collar_variation(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation, range, value, display)

  return offset + length, value
end

-- Size: Trading Collar Variation Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation_type = 1

-- Display: Trading Collar Variation Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_collar_variation_type = function(value)
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
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.trading_collar_variation_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation_type, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure_quantity = 4

-- Display: Unit Of Measure Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.unit_of_measure_quantity = function(value)
  return "Unit Of Measure Quantity: "..value
end

-- Dissect: Unit Of Measure Quantity
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure_quantity = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.unit_of_measure_quantity(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.unit_of_measure_quantity, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure = 5

-- Display: Unit Of Measure
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.unit_of_measure = function(value)
  if value == "BU" then
    return "Unit Of Measure: Bushels (BU)"
  end
  if value == "USD" then
    return "Unit Of Measure: Price Then Time (USD)"
  end

  return "Unit Of Measure: Unknown("..value..")"
end

-- Dissect: Unit Of Measure
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Size: Tick
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.tick = 8

-- Display: Tick
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.tick = function(value)
  return "Tick: "..value
end

-- Dissect: Tick
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.tick = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.tick
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.tick(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Maximum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maximum_size = 4

-- Display: Maximum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.maximum_size = function(value)
  return "Maximum Size: "..value
end

-- Dissect: Maximum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.maximum_size = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maximum_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.maximum_size(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.maximum_size, range, value, display)

  return offset + length, value
end

-- Size: Minimum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.minimum_size = 4

-- Display: Minimum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.minimum_size = function(value)
  return "Minimum Size: "..value
end

-- Dissect: Minimum Size
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.minimum_size = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.minimum_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.minimum_size(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.minimum_size, range, value, display)

  return offset + length, value
end

-- Size: Match Algorithm
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.match_algorithm = 1

-- Display: Match Algorithm
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.match_algorithm = function(value)
  if value == "P" then
    return "Match Algorithm: Price Then Time (P)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.match_algorithm = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.match_algorithm
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.match_algorithm(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Size: Settlement Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_currency = 1

-- Display: Settlement Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_currency = function(value)
  if value == "U" then
    return "Settlement Currency: Usd (U)"
  end

  return "Settlement Currency: Unknown("..value..")"
end

-- Dissect: Settlement Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_currency = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.settlement_currency(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Size: Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.currency = 1

-- Display: Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.currency = function(value)
  if value == "USD" then
    return "Currency: U (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.currency = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.currency(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_type = 1

-- Display: Instrument Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_type = function(value)
  if value == "F" then
    return "Instrument Type: Futures (F)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id Source
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id_source = 1

-- Display: Instrument Id Source
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_id_source = function(value)
  if value == "E" then
    return "Instrument Id Source: Exchange (E)"
  end

  return "Instrument Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Id Source
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id_source = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id_source
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.instrument_id_source(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.instrument_id_source, range, value, display)

  return offset + length, value
end

-- Size: Exchange
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.exchange = 4

-- Display: Exchange
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.exchange = function(value)
  if value == "XMGE" then
    return "Exchange: Miax Futures Exchange (XMGE)"
  end

  return "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.exchange = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.exchange
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.exchange(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.exchange, range, value, display)

  return offset + length, value
end

-- Size: Spread Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.spread_type = 1

-- Display: Spread Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.spread_type = function(value)
  return "Spread Type: "..value
end

-- Dissect: Spread Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.spread_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.spread_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.spread_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.spread_type, range, value, display)

  return offset + length, value
end

-- Size: Product Group Code
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.product_group_code = 6

-- Display: Product Group Code
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.product_group_code = function(value)
  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.product_group_code = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.product_group_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.product_group_code(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Size: Underlying Asset
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset = 4

-- Display: Underlying Asset
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.underlying_asset = function(value)
  return "Underlying Asset: "..value
end

-- Dissect: Underlying Asset
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.underlying_asset(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.underlying_asset, range, value, display)

  return offset + length, value
end

-- Size: Underlying Asset Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset_type = 1

-- Display: Underlying Asset Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.underlying_asset_type = function(value)
  if value == "E" then
    return "Underlying Asset Type: Equity Index (E)"
  end
  if value == "A" then
    return "Underlying Asset Type: Commodity Agriculture (A)"
  end

  return "Underlying Asset Type: Unknown("..value..")"
end

-- Dissect: Underlying Asset Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.underlying_asset_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.underlying_asset_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.complex_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.product_group_code

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.spread_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.exchange

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id_source

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.currency

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_currency

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.match_algorithm

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.minimum_size

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maximum_size

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.tick

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure_quantity

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.reserved_16

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.number_of_legs

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_leg

  return index
end

-- Display: Complex Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.complex_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.complex_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Underlying Asset Type: 1 Byte Ascii String Enum with 2 values
  index, underlying_asset_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset_type(buffer, index, packet, parent)

  -- Underlying Asset: 4 Byte Ascii String
  index, underlying_asset = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset(buffer, index, packet, parent)

  -- Product Group Code: 6 Byte Ascii String
  index, product_group_code = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.product_group_code(buffer, index, packet, parent)

  -- Spread Type: 1 Byte Ascii String
  index, spread_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.spread_type(buffer, index, packet, parent)

  -- Exchange: 4 Byte Ascii String Enum with 1 values
  index, exchange = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.exchange(buffer, index, packet, parent)

  -- Instrument Id Source: 1 Byte Ascii String Enum with 1 values
  index, instrument_id_source = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id_source(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 1 values
  index, instrument_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_type(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 1 values
  index, currency = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.currency(buffer, index, packet, parent)

  -- Settlement Currency: 1 Byte Ascii String Enum with 1 values
  index, settlement_currency = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String Enum with 1 values
  index, match_algorithm = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.match_algorithm(buffer, index, packet, parent)

  -- Minimum Size: 4 Byte Unsigned Fixed Width Integer
  index, minimum_size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.minimum_size(buffer, index, packet, parent)

  -- Maximum Size: 4 Byte Unsigned Fixed Width Integer
  index, maximum_size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.maximum_size(buffer, index, packet, parent)

  -- Tick: 8 Byte Signed Fixed Width Integer
  index, tick = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.tick(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String Enum with 2 values
  index, unit_of_measure = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unit_of_measure_quantity = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure_quantity(buffer, index, packet, parent)

  -- Trading Collar Variation Type: 1 Byte Ascii String Enum with 5 values
  index, trading_collar_variation_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation_type(buffer, index, packet, parent)

  -- Trading Collar Variation: 8 Byte Signed Fixed Width Integer
  index, trading_collar_variation = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation(buffer, index, packet, parent)

  -- Reserved 16: 16 Byte Ascii String
  index, reserved_16 = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.reserved_16(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index, number_of_legs = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.number_of_legs(buffer, index, packet, parent)

  -- Instrument Leg
  index, instrument_leg = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_leg(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.complex_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_instrument_definition_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.complex_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.complex_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.complex_instrument_definition_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.complex_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Low Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.low_limit_price = 8

-- Display: Low Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.low_limit_price = function(value)
  return "Low Limit Price: "..value
end

-- Dissect: Low Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.low_limit_price = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.low_limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.low_limit_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Size: High Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.high_limit_price = 8

-- Display: High Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.high_limit_price = function(value)
  return "High Limit Price: "..value
end

-- Dissect: High Limit Price
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.high_limit_price = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.high_limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.high_limit_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Month Year
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maturity_month_year = 4

-- Display: Maturity Month Year
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.maturity_month_year = function(value)
  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.maturity_month_year = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maturity_month_year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.maturity_month_year(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.simple_instrument_definition_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.timestamp

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.underlying_asset

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.product_group_code

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.exchange

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_id_source

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maturity_month_year

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.currency

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_currency

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.match_algorithm

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.minimum_size

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.maximum_size

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.tick

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.unit_of_measure_quantity

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_type_calc_method

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_quantity

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.high_limit_price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.low_limit_price

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trading_collar_variation

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.reserved_16

  return index
end

-- Display: Simple Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.simple_instrument_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.simple_instrument_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.timestamp(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id(buffer, index, packet, parent)

  -- Underlying Asset Type: 1 Byte Ascii String Enum with 2 values
  index, underlying_asset_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset_type(buffer, index, packet, parent)

  -- Underlying Asset: 4 Byte Ascii String
  index, underlying_asset = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.underlying_asset(buffer, index, packet, parent)

  -- Product Group Code: 6 Byte Ascii String
  index, product_group_code = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.product_group_code(buffer, index, packet, parent)

  -- Exchange: 4 Byte Ascii String Enum with 1 values
  index, exchange = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.exchange(buffer, index, packet, parent)

  -- Instrument Id Source: 1 Byte Ascii String Enum with 1 values
  index, instrument_id_source = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_id_source(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 1 values
  index, instrument_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_type(buffer, index, packet, parent)

  -- Maturity Month Year: 4 Byte Unsigned Fixed Width Integer
  index, maturity_month_year = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 1 values
  index, currency = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.currency(buffer, index, packet, parent)

  -- Settlement Currency: 1 Byte Ascii String Enum with 1 values
  index, settlement_currency = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String Enum with 1 values
  index, match_algorithm = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.match_algorithm(buffer, index, packet, parent)

  -- Minimum Size: 4 Byte Unsigned Fixed Width Integer
  index, minimum_size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.minimum_size(buffer, index, packet, parent)

  -- Maximum Size: 4 Byte Unsigned Fixed Width Integer
  index, maximum_size = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.maximum_size(buffer, index, packet, parent)

  -- Tick: 8 Byte Signed Fixed Width Integer
  index, tick = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.tick(buffer, index, packet, parent)

  -- Unit Of Measure: 5 Byte Ascii String Enum with 2 values
  index, unit_of_measure = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: 4 Byte Unsigned Fixed Width Integer
  index, unit_of_measure_quantity = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.unit_of_measure_quantity(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index, settlement_price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: 1 Byte Ascii String Enum with 2 values
  index, settlement_price_type_calc_method = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_type_calc_method(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume(buffer, index, packet, parent)

  -- Open Interest Quantity: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_quantity = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_quantity(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index, high_limit_price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index, low_limit_price = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.low_limit_price(buffer, index, packet, parent)

  -- Trading Collar Variation Type: 1 Byte Ascii String Enum with 5 values
  index, trading_collar_variation_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation_type(buffer, index, packet, parent)

  -- Trading Collar Variation: 8 Byte Signed Fixed Width Integer
  index, trading_collar_variation = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trading_collar_variation(buffer, index, packet, parent)

  -- Reserved 16: 16 Byte Ascii String
  index, reserved_16 = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.reserved_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Definition Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.simple_instrument_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_instrument_definition_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.simple_instrument_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.simple_instrument_definition_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.simple_instrument_definition_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.simple_instrument_definition_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.data = function(buffer, offset, message_type)
  -- Size of Simple Instrument Definition Message
  if message_type == "1" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.simple_instrument_definition_message(buffer, offset)
  end
  -- Size of Complex Instrument Definition Message
  if message_type == "2" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.complex_instrument_definition_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "4" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.system_state_message(buffer, offset)
  end
  -- Size of Instrument Trading Status Notification Message
  if message_type == "4" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_trading_status_notification_message(buffer, offset)
  end
  -- Size of Anticipated Opening Price Message
  if message_type == "5" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.anticipated_opening_price_message(buffer, offset)
  end
  -- Size of Settlement Price Update Message
  if message_type == "6" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.settlement_price_update_message(buffer, offset)
  end
  -- Size of Open Interest Update Message
  if message_type == "7" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.open_interest_update_message(buffer, offset)
  end
  -- Size of Total Volume Update Message
  if message_type == "8" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.total_volume_update_message(buffer, offset)
  end
  -- Size of Instrument Clear Message
  if message_type == "9" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.instrument_clear_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "10" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.add_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == "11" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.modify_order_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == "12" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == "13" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.order_execution_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "14" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.trade_cancel_message(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Simple Instrument Definition Message
  if message_type == "1" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.simple_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Message
  if message_type == "2" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.complex_instrument_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "4" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Notification Message
  if message_type == "4" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_trading_status_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Anticipated Opening Price Message
  if message_type == "5" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.anticipated_opening_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Price Update Message
  if message_type == "6" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.settlement_price_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Update Message
  if message_type == "7" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.open_interest_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Total Volume Update Message
  if message_type == "8" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.total_volume_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Clear Message
  if message_type == "9" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.instrument_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "10" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "11" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == "12" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == "13" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "14" then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.data(buffer, packet, parent)
  local element = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.data, range, display)

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.message_type = 1

-- Display: Message Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.message_type = function(value)
  if value == "1" then
    return "Message Type: Simple Instrument Definition Message (1)"
  end
  if value == "2" then
    return "Message Type: Complex Instrument Definition Message (2)"
  end
  if value == "4" then
    return "Message Type: System State Message (4)"
  end
  if value == "4" then
    return "Message Type: Instrument Trading Status Notification Message (4)"
  end
  if value == "5" then
    return "Message Type: Anticipated Opening Price Message (5)"
  end
  if value == "6" then
    return "Message Type: Settlement Price Update Message (6)"
  end
  if value == "7" then
    return "Message Type: Open Interest Update Message (7)"
  end
  if value == "8" then
    return "Message Type: Total Volume Update Message (8)"
  end
  if value == "9" then
    return "Message Type: Instrument Clear Message (9)"
  end
  if value == "10" then
    return "Message Type: Add Order Message (10)"
  end
  if value == "11" then
    return "Message Type: Modify Order Message (11)"
  end
  if value == "12" then
    return "Message Type: Delete Order Message (12)"
  end
  if value == "13" then
    return "Message Type: Order Execution Message (13)"
  end
  if value == "14" then
    return "Message Type: Trade Cancel Message (14)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Application Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.message_type

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.data(buffer, data_offset, data_type)

  return index
end

-- Display: Application Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 14 branches
  index = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.application_message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.application_message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.application_message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.payload(buffer, packet, parent)
  local element = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.payload, range, display)

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_number = 1

-- Display: Session Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_type = 1

-- Display: Packet Type
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.packet_type = function(value)
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
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_length = 2

-- Display: Packet Length
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sequence_number = 8

-- Display: Sequence Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.sequence_number

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_length

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.packet_type

  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_onyx_futures_depthofmarket_mach_v1_0_b_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyx_futures_depthofmarket_mach_v1_0_b_display.message(buffer, packet, parent)
    parent = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b.fields.message, range, display)
  end

  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index = miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_onyx_futures_depthofmarket_mach_v1_0_b.init()
end

-- Dissector for Miax Onyx Futures DepthOfMarket Mach 1.0.b
function miax_onyx_futures_depthofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_onyx_futures_depthofmarket_mach_v1_0_b.name

  -- Dissect protocol
  local protocol = parent:add(miax_onyx_futures_depthofmarket_mach_v1_0_b, buffer(), miax_onyx_futures_depthofmarket_mach_v1_0_b.description, "("..buffer:len().." Bytes)")
  return miax_onyx_futures_depthofmarket_mach_v1_0_b_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_onyx_futures_depthofmarket_mach_v1_0_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_onyx_futures_depthofmarket_mach_v1_0_b_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Onyx Futures DepthOfMarket Mach 1.0.b
local function miax_onyx_futures_depthofmarket_mach_v1_0_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_onyx_futures_depthofmarket_mach_v1_0_b_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_onyx_futures_depthofmarket_mach_v1_0_b
  miax_onyx_futures_depthofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax Onyx Futures DepthOfMarket Mach 1.0.b
miax_onyx_futures_depthofmarket_mach_v1_0_b:register_heuristic("udp", miax_onyx_futures_depthofmarket_mach_v1_0_b_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 1.0.b
--   Date: Tuesday, March 25, 2025
--   Specification: onyx_dom_feed_v1.0b.pdf
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
