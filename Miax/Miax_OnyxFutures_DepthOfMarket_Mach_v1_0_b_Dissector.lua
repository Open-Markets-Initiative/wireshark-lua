-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures DepthOfMarket Mach 1.0.b Protocol
local omi_miax_onyxfutures_depthofmarket_mach_v1_0_b = Proto("Miax.OnyxFutures.DepthOfMarket.Mach.v1.0.b.Lua", "Miax OnyxFutures DepthOfMarket Mach 1.0.b")

-- Protocol table
local miax_onyxfutures_depthofmarket_mach_v1_0_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures DepthOfMarket Mach 1.0.b Fields
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.aggressor_side = ProtoField.new("Aggressor Side", "miax.onyxfutures.depthofmarket.mach.v1.0.b.aggressorside", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price = ProtoField.new("Anticipated Opening Price", "miax.onyxfutures.depthofmarket.mach.v1.0.b.anticipatedopeningprice", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.applicationmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.buy_order_id = ProtoField.new("Buy Order Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.buyorderid", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.depthofmarket.mach.v1.0.b.correctionnumber", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.currency = ProtoField.new("Currency", "miax.onyxfutures.depthofmarket.mach.v1.0.b.currency", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.data = ProtoField.new("Data", "miax.onyxfutures.depthofmarket.mach.v1.0.b.data", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.dom_version = ProtoField.new("Dom Version", "miax.onyxfutures.depthofmarket.mach.v1.0.b.domversion", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.exchange = ProtoField.new("Exchange", "miax.onyxfutures.depthofmarket.mach.v1.0.b.exchange", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.high_limit_price = ProtoField.new("High Limit Price", "miax.onyxfutures.depthofmarket.mach.v1.0.b.highlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_id = ProtoField.new("Instrument Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumentid", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_id_source = ProtoField.new("Instrument Id Source", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumentidsource", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_leg = ProtoField.new("Instrument Leg", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumentleg", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_type = ProtoField.new("Instrument Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumenttype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.leg_ratio = ProtoField.new("Leg Ratio", "miax.onyxfutures.depthofmarket.mach.v1.0.b.legratio", ftypes.INT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.low_limit_price = ProtoField.new("Low Limit Price", "miax.onyxfutures.depthofmarket.mach.v1.0.b.lowlimitprice", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.market_state = ProtoField.new("Market State", "miax.onyxfutures.depthofmarket.mach.v1.0.b.marketstate", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.match_algorithm = ProtoField.new("Match Algorithm", "miax.onyxfutures.depthofmarket.mach.v1.0.b.matchalgorithm", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "miax.onyxfutures.depthofmarket.mach.v1.0.b.maturitymonthyear", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.maximum_size = ProtoField.new("Maximum Size", "miax.onyxfutures.depthofmarket.mach.v1.0.b.maximumsize", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.message = ProtoField.new("Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.message", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.messagetype", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.minimum_size = ProtoField.new("Minimum Size", "miax.onyxfutures.depthofmarket.mach.v1.0.b.minimumsize", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.modify_flags = ProtoField.new("Modify Flags", "miax.onyxfutures.depthofmarket.mach.v1.0.b.modifyflags", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.depthofmarket.mach.v1.0.b.numberoflegs", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.open_interest_quantity = ProtoField.new("Open Interest Quantity", "miax.onyxfutures.depthofmarket.mach.v1.0.b.openinterestquantity", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.opening_match_quantity = ProtoField.new("Opening Match Quantity", "miax.onyxfutures.depthofmarket.mach.v1.0.b.openingmatchquantity", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_id = ProtoField.new("Order Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.orderid", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_position = ProtoField.new("Order Position", "miax.onyxfutures.depthofmarket.mach.v1.0.b.orderposition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_side = ProtoField.new("Order Side", "miax.onyxfutures.depthofmarket.mach.v1.0.b.orderside", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_type = ProtoField.new("Order Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.ordertype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.depthofmarket.mach.v1.0.b.packet", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.depthofmarket.mach.v1.0.b.packetlength", ftypes.UINT16)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.packettype", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.depthofmarket.mach.v1.0.b.payload", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.price = ProtoField.new("Price", "miax.onyxfutures.depthofmarket.mach.v1.0.b.price", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyxfutures.depthofmarket.mach.v1.0.b.productgroupcode", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.depthofmarket.mach.v1.0.b.reserved16", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.onyxfutures.depthofmarket.mach.v1.0.b.reserved8", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.sell_order_id = ProtoField.new("Sell Order Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.sellorderid", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.depthofmarket.mach.v1.0.b.sequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.sessionid", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.depthofmarket.mach.v1.0.b.sessionnumber", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_currency = ProtoField.new("Settlement Currency", "miax.onyxfutures.depthofmarket.mach.v1.0.b.settlementcurrency", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price = ProtoField.new("Settlement Price", "miax.onyxfutures.depthofmarket.mach.v1.0.b.settlementprice", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_type = ProtoField.new("Settlement Price Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.settlementpricetype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method = ProtoField.new("Settlement Price Type Calc Method", "miax.onyxfutures.depthofmarket.mach.v1.0.b.settlementpricetypecalcmethod", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.size = ProtoField.new("Size", "miax.onyxfutures.depthofmarket.mach.v1.0.b.size", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.spread_type = ProtoField.new("Spread Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.spreadtype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.depthofmarket.mach.v1.0.b.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.tick = ProtoField.new("Tick", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tick", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.timestamp = ProtoField.new("Timestamp", "miax.onyxfutures.depthofmarket.mach.v1.0.b.timestamp", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.total_volume = ProtoField.new("Total Volume", "miax.onyxfutures.depthofmarket.mach.v1.0.b.totalvolume", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradedate", ftypes.UINT16)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_id = ProtoField.new("Trade Id", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradeid", ftypes.UINT64)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation = ProtoField.new("Trading Collar Variation", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradingcollarvariation", ftypes.DOUBLE)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation_type = ProtoField.new("Trading Collar Variation Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradingcollarvariationtype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_status = ProtoField.new("Trading Status", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradingstatus", ftypes.UINT8)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.underlying_asset = ProtoField.new("Underlying Asset", "miax.onyxfutures.depthofmarket.mach.v1.0.b.underlyingasset", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.underlying_asset_type = ProtoField.new("Underlying Asset Type", "miax.onyxfutures.depthofmarket.mach.v1.0.b.underlyingassettype", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "miax.onyxfutures.depthofmarket.mach.v1.0.b.unitofmeasure", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unit_of_measure_quantity = ProtoField.new("Unit Of Measure Quantity", "miax.onyxfutures.depthofmarket.mach.v1.0.b.unitofmeasurequantity", ftypes.UINT32)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unused_7 = ProtoField.new("Unused 7", "miax.onyxfutures.depthofmarket.mach.v1.0.b.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)

-- Miax OnyxFutures DepthOfMarket Mach 1.0.b messages
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.add_order_message = ProtoField.new("Add Order Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.addordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price_message = ProtoField.new("Anticipated Opening Price Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.anticipatedopeningpricemessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.complex_instrument_definition_message = ProtoField.new("Complex Instrument Definition Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.complexinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.deleteordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_clear_message = ProtoField.new("Instrument Clear Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumentclearmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message = ProtoField.new("Instrument Trading Status Notification Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumenttradingstatusnotificationmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.modifyordermessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.open_interest_update_message = ProtoField.new("Open Interest Update Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.openinterestupdatemessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.orderexecutionmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_update_message = ProtoField.new("Settlement Price Update Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.settlementpriceupdatemessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.simple_instrument_definition_message = ProtoField.new("Simple Instrument Definition Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.simpleinstrumentdefinitionmessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.system_state_message = ProtoField.new("System State Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.systemstatemessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.total_volume_update_message = ProtoField.new("Total Volume Update Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.totalvolumeupdatemessage", ftypes.STRING)
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.onyxfutures.depthofmarket.mach.v1.0.b.tradecancelmessage", ftypes.STRING)

-- Miax OnyxFutures DepthOfMarket Mach 1.0.b generated fields
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "miax.onyxfutures.depthofmarket.mach.v1.0.b.instrumentlegindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures DepthOfMarket Mach 1.0.b Element Dissection Options
show.add_order_message = true
show.anticipated_opening_price_message = true
show.application_message = true
show.complex_instrument_definition_message = true
show.delete_order_message = true
show.instrument_clear_message = true
show.instrument_leg = true
show.instrument_trading_status_notification_message = true
show.message = true
show.modify_flags = true
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

-- Register Miax OnyxFutures DepthOfMarket Mach 1.0.b Show Options
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message = Pref.bool("Show Anticipated Opening Price Message", show.anticipated_opening_price_message, "Parse and add Anticipated Opening Price Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message = Pref.bool("Show Complex Instrument Definition Message", show.complex_instrument_definition_message, "Parse and add Complex Instrument Definition Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message = Pref.bool("Show Instrument Clear Message", show.instrument_clear_message, "Parse and add Instrument Clear Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_leg = Pref.bool("Show Instrument Leg", show.instrument_leg, "Parse and add Instrument Leg to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message = Pref.bool("Show Instrument Trading Status Notification Message", show.instrument_trading_status_notification_message, "Parse and add Instrument Trading Status Notification Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message = Pref.bool("Show Open Interest Update Message", show.open_interest_update_message, "Parse and add Open Interest Update Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message = Pref.bool("Show Settlement Price Update Message", show.settlement_price_update_message, "Parse and add Settlement Price Update Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message = Pref.bool("Show Simple Instrument Definition Message", show.simple_instrument_definition_message, "Parse and add Simple Instrument Definition Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message = Pref.bool("Show Total Volume Update Message", show.total_volume_update_message, "Parse and add Total Volume Update Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message then
    show.add_order_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_add_order_message
    changed = true
  end
  if show.anticipated_opening_price_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message then
    show.anticipated_opening_price_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_anticipated_opening_price_message
    changed = true
  end
  if show.application_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_application_message then
    show.application_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_application_message
    changed = true
  end
  if show.complex_instrument_definition_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message then
    show.complex_instrument_definition_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_complex_instrument_definition_message
    changed = true
  end
  if show.delete_order_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message then
    show.delete_order_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_delete_order_message
    changed = true
  end
  if show.instrument_clear_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message then
    show.instrument_clear_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_clear_message
    changed = true
  end
  if show.instrument_leg ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_leg then
    show.instrument_leg = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_leg
    changed = true
  end
  if show.instrument_trading_status_notification_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message then
    show.instrument_trading_status_notification_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_instrument_trading_status_notification_message
    changed = true
  end
  if show.message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_message then
    show.message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_message
    changed = true
  end
  if show.modify_flags ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_flags then
    show.modify_flags = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_flags
    changed = true
  end
  if show.modify_order_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message then
    show.modify_order_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_modify_order_message
    changed = true
  end
  if show.open_interest_update_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message then
    show.open_interest_update_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_open_interest_update_message
    changed = true
  end
  if show.order_execution_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message then
    show.order_execution_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_packet then
    show.packet = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_packet
    changed = true
  end
  if show.settlement_price_update_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message then
    show.settlement_price_update_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_settlement_price_update_message
    changed = true
  end
  if show.simple_instrument_definition_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message then
    show.simple_instrument_definition_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_simple_instrument_definition_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message then
    show.system_state_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_system_state_message
    changed = true
  end
  if show.total_volume_update_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message then
    show.total_volume_update_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_total_volume_update_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_trade_cancel_message
    changed = true
  end
  if show.data ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_data then
    show.data = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_payload then
    show.payload = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.prefs.show_payload
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
-- Dissect Miax OnyxFutures DepthOfMarket Mach 1.0.b
-----------------------------------------------------------------------

-- Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.size = {}

-- Size: Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size = 4

-- Display: Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.size, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.price = {}

-- Size: Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size = 8

-- Display: Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.price, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id = {}

-- Size: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.size = 8

-- Display: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id = {}

-- Size: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size = 4

-- Display: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp = {}

-- Size: Timestamp
miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size = 8

-- Display: Timestamp
miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message = {}

-- Calculate size of: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size

  return index
end

-- Display: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side = {}

-- Size: Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.size = 1

-- Display: Aggressor Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id = {}

-- Size: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.size = 8

-- Display: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.display = function(value)
  return "Sell Order Id: "..value
end

-- Dissect: Sell Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.sell_order_id, range, value, display)

  return offset + length, value
end

-- Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id = {}

-- Size: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.size = 8

-- Display: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.display = function(value)
  return "Buy Order Id: "..value
end

-- Dissect: Buy Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.buy_order_id, range, value, display)

  return offset + length, value
end

-- Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message = {}

-- Calculate size of: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size

  return index
end

-- Display: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Buy Order Id: BinaryU
  index, buy_order_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.buy_order_id.dissect(buffer, index, packet, parent)

  -- Sell Order Id: BinaryU
  index, sell_order_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.sell_order_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: Alphanumeric
  index, aggressor_side = miax_onyxfutures_depthofmarket_mach_v1_0_b.aggressor_side.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_depthofmarket_mach_v1_0_b.correction_number.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.order_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_execution_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id = {}

-- Size: Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.size = 8

-- Display: Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_id, range, value, display)

  return offset + length, value
end

-- Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message = {}

-- Calculate size of: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.size

  return index
end

-- Display: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.delete_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags = {}

-- Size: Modify Flags
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.size = 1

-- Display: Modify Flags
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Order Position flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Order Position|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Flags
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.bits = function(buffer, offset, packet, parent)

  -- Unused 7: 7 Bit
  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unused_7, buffer(offset, 1))

  -- Order Position: 1 Bit
  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_position, buffer(offset, 1))
end

-- Dissect: Modify Flags
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.display(range, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.modify_flags, range, display)

  if show.modify_flags then
    miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message = {}

-- Calculate size of: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.size

  return index
end

-- Display: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 2 fields
  index, modify_flags = miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.modify_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side = {}

-- Size: Order Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.size = 1

-- Display: Order Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_side, range, value, display)

  return offset + length, value
end

-- Order Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type = {}

-- Size: Order Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.size = 1

-- Display: Order Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.order_type, range, value, display)

  return offset + length, value
end

-- Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message = {}

-- Calculate size of: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.size.size

  return index
end

-- Display: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_type.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_onyxfutures_depthofmarket_mach_v1_0_b.order_side.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_depthofmarket_mach_v1_0_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_onyxfutures_depthofmarket_mach_v1_0_b.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.add_order_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message = {}

-- Calculate size of: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  return index
end

-- Display: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Clear Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_clear_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Volume
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume = {}

-- Size: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.size = 4

-- Display: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message = {}

-- Calculate size of: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.size

  return index
end

-- Display: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Total Volume Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.dissect = function(buffer, offset, packet, parent)
  if show.total_volume_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.total_volume_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity = {}

-- Size: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.size = 4

-- Display: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.display = function(value)
  return "Open Interest Quantity: "..value
end

-- Dissect: Open Interest Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.open_interest_quantity, range, value, display)

  return offset + length, value
end

-- Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message = {}

-- Calculate size of: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.size

  return index
end

-- Display: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.open_interest_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method = {}

-- Size: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.size = 1

-- Display: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.display = function(value)
  if value == "A" then
    return "Settlement Price Type Calc Method: Actual (A)"
  end
  if value == "T" then
    return "Settlement Price Type Calc Method: Theoretical (T)"
  end

  return "Settlement Price Type Calc Method: Unknown("..value..")"
end

-- Dissect: Settlement Price Type Calc Method
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_type_calc_method, range, value, display)

  return offset + length, value
end

-- Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type = {}

-- Size: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.size = 1

-- Display: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.display = function(value)
  if value == "D" then
    return "Settlement Price Type: Daily (D)"
  end
  if value == "F" then
    return "Settlement Price Type: Final (F)"
  end

  return "Settlement Price Type: Unknown("..value..")"
end

-- Dissect: Settlement Price Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_type, range, value, display)

  return offset + length, value
end

-- Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price = {}

-- Size: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.size = 8

-- Display: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Translate: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Settlement Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message = {}

-- Calculate size of: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.size

  return index
end

-- Display: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_date.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type: Alphanumeric
  index, settlement_price_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Price Update Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.settlement_price_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_price_update_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity = {}

-- Size: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.size = 4

-- Display: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.display = function(value)
  return "Opening Match Quantity: "..value
end

-- Dissect: Opening Match Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.opening_match_quantity, range, value, display)

  return offset + length, value
end

-- Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price = {}

-- Size: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.size = 8

-- Display: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.display = function(value)
  return "Anticipated Opening Price: "..value
end

-- Translate: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Anticipated Opening Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price, range, value, display)

  return offset + length, value
end

-- Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message = {}

-- Calculate size of: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.size

  return index
end

-- Display: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Anticipated Opening Price: Price9S
  index, anticipated_opening_price = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price.dissect(buffer, index, packet, parent)

  -- Opening Match Quantity: BinaryU
  index, opening_match_quantity = miax_onyxfutures_depthofmarket_mach_v1_0_b.opening_match_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anticipated Opening Price Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.anticipated_opening_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.anticipated_opening_price_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State
miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state = {}

-- Size: Market State
miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.size = 1

-- Display: Market State
miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.market_state, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status = {}

-- Size: Trading Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.size = 1

-- Display: Trading Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message = {}

-- Calculate size of: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.size

  return index
end

-- Display: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_onyxfutures_depthofmarket_mach_v1_0_b.market_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Notification Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_trading_status_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_trading_status_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status = {}

-- Size: System Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.size = 1

-- Display: System Status
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id = {}

-- Size: Session Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.session_id, range, value, display)

  return offset + length, value
end

-- Dom Version
miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version = {}

-- Size: Dom Version
miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.size = 8

-- Display: Dom Version
miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.display = function(value)
  return "Dom Version: "..value
end

-- Dissect: Dom Version
miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.dom_version, range, value, display)

  return offset + length, value
end

-- System State Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message = {}

-- Calculate size of: System State Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.size

  return index
end

-- Display: System State Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Dom Version: Alphanumeric
  index, dom_version = miax_onyxfutures_depthofmarket_mach_v1_0_b.dom_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_depthofmarket_mach_v1_0_b.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.system_state_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 8
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8 = {}

-- Size: Reserved 8
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.size = 8

-- Display: Reserved 8
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year = {}

-- Size: Maturity Month Year
miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.size = 4

-- Display: Maturity Month Year
miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.display = function(value)
  return "Maturity Month Year: "..value
end

-- Dissect: Maturity Month Year
miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.maturity_month_year, range, value, display)

  return offset + length, value
end

-- Leg Ratio
miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio = {}

-- Size: Leg Ratio
miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.size = 4

-- Display: Leg Ratio
miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg = {}

-- Calculate size of: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.size

  return index
end

-- Display: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil then
    local iteration = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio: BinaryS
  index, leg_ratio = miax_onyxfutures_depthofmarket_mach_v1_0_b.leg_ratio.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: BinaryU
  index, maturity_month_year = miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_leg, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation = {}

-- Size: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.size = 8

-- Display: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.display = function(value)
  return "Trading Collar Variation: "..value
end

-- Translate: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Variation
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation, range, value, display)

  return offset + length, value
end

-- Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type = {}

-- Size: Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.size = 1

-- Display: Trading Collar Variation Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.trading_collar_variation_type, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity = {}

-- Size: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.size = 4

-- Display: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.display = function(value)
  return "Unit Of Measure Quantity: "..value
end

-- Dissect: Unit Of Measure Quantity
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unit_of_measure_quantity, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure = {}

-- Size: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.size = 5

-- Display: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.display = function(value)
  if value == "BU" then
    return "Unit Of Measure: Bushels (BU)"
  end
  if value == "USD" then
    return "Unit Of Measure: Price Then Time (USD)"
  end

  return "Unit Of Measure: Unknown("..value..")"
end

-- Dissect: Unit Of Measure
miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Tick
miax_onyxfutures_depthofmarket_mach_v1_0_b.tick = {}

-- Size: Tick
miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.size = 8

-- Display: Tick
miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.display = function(value)
  return "Tick: "..value
end

-- Translate: Tick
miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Tick
miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.tick, range, value, display)

  return offset + length, value
end

-- Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size = {}

-- Size: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.size = 4

-- Display: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.display = function(value)
  return "Maximum Size: "..value
end

-- Dissect: Maximum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.maximum_size, range, value, display)

  return offset + length, value
end

-- Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size = {}

-- Size: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.size = 4

-- Display: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.display = function(value)
  return "Minimum Size: "..value
end

-- Dissect: Minimum Size
miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.minimum_size, range, value, display)

  return offset + length, value
end

-- Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm = {}

-- Size: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.size = 1

-- Display: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.display = function(value)
  if value == "P" then
    return "Match Algorithm: Price Then Time (P)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency = {}

-- Size: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.size = 1

-- Display: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.display = function(value)
  if value == "U" then
    return "Settlement Currency: Usd (U)"
  end

  return "Settlement Currency: Unknown("..value..")"
end

-- Dissect: Settlement Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.settlement_currency, range, value, display)

  return offset + length, value
end

-- Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.currency = {}

-- Size: Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.size = 1

-- Display: Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.display = function(value)
  if value == "USD" then
    return "Currency: U (USD)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.currency, range, value, display)

  return offset + length, value
end

-- Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type = {}

-- Size: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.size = 1

-- Display: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.display = function(value)
  if value == "F" then
    return "Instrument Type: Futures (F)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source = {}

-- Size: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.size = 1

-- Display: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.display = function(value)
  if value == "E" then
    return "Instrument Id Source: Exchange (E)"
  end

  return "Instrument Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Id Source
miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.instrument_id_source, range, value, display)

  return offset + length, value
end

-- Exchange
miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange = {}

-- Size: Exchange
miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.size = 4

-- Display: Exchange
miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.display = function(value)
  if value == "XMGE" then
    return "Exchange: Miax Futures Exchange (XMGE)"
  end

  return "Exchange: Unknown("..value..")"
end

-- Dissect: Exchange
miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.exchange, range, value, display)

  return offset + length, value
end

-- Spread Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type = {}

-- Size: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.size = 1

-- Display: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.display = function(value)
  return "Spread Type: "..value
end

-- Dissect: Spread Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.spread_type, range, value, display)

  return offset + length, value
end

-- Product Group Code
miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code = {}

-- Size: Product Group Code
miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.size = 6

-- Display: Product Group Code
miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.display = function(value)
  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Underlying Asset
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset = {}

-- Size: Underlying Asset
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.size = 4

-- Display: Underlying Asset
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.display = function(value)
  return "Underlying Asset: "..value
end

-- Dissect: Underlying Asset
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.underlying_asset, range, value, display)

  return offset + length, value
end

-- Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type = {}

-- Size: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.size = 1

-- Display: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.display = function(value)
  if value == "E" then
    return "Underlying Asset Type: Equity Index (E)"
  end
  if value == "A" then
    return "Underlying Asset Type: Commodity Agriculture (A)"
  end

  return "Underlying Asset Type: Unknown("..value..")"
end

-- Dissect: Underlying Asset Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.underlying_asset_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message = {}

-- Calculate size of: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_leg_count * 20

  return index
end

-- Display: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset: Alphanumeric
  index, underlying_asset = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.dissect(buffer, index, packet, parent)

  -- Product Group Code: Alphanumeric
  index, product_group_code = miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.dissect(buffer, index, packet, parent)

  -- Spread Type: Alphanumeric
  index, spread_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.spread_type.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_depthofmarket_mach_v1_0_b.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_instrument_definition_message then
    local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.complex_instrument_definition_message, range, display)
  end

  return miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.fields(buffer, offset, packet, parent)
end

-- Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price = {}

-- Size: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.size = 8

-- Display: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price = {}

-- Size: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.size = 8

-- Display: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.translate(raw)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message = {}

-- Calculate size of: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.size

  return index
end

-- Display: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: NanoTime
  index, timestamp = miax_onyxfutures_depthofmarket_mach_v1_0_b.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: BinaryU
  index, instrument_id = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id.dissect(buffer, index, packet, parent)

  -- Underlying Asset Type: Alphanumeric
  index, underlying_asset_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset_type.dissect(buffer, index, packet, parent)

  -- Underlying Asset: Alphanumeric
  index, underlying_asset = miax_onyxfutures_depthofmarket_mach_v1_0_b.underlying_asset.dissect(buffer, index, packet, parent)

  -- Product Group Code: Alphanumeric
  index, product_group_code = miax_onyxfutures_depthofmarket_mach_v1_0_b.product_group_code.dissect(buffer, index, packet, parent)

  -- Exchange: Alphanumeric
  index, exchange = miax_onyxfutures_depthofmarket_mach_v1_0_b.exchange.dissect(buffer, index, packet, parent)

  -- Instrument Id Source: Alphanumeric
  index, instrument_id_source = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_id_source.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alphanumeric
  index, instrument_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: BinaryU
  index, maturity_month_year = miax_onyxfutures_depthofmarket_mach_v1_0_b.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = miax_onyxfutures_depthofmarket_mach_v1_0_b.currency.dissect(buffer, index, packet, parent)

  -- Settlement Currency: Alphanumeric
  index, settlement_currency = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: Alphanumeric
  index, match_algorithm = miax_onyxfutures_depthofmarket_mach_v1_0_b.match_algorithm.dissect(buffer, index, packet, parent)

  -- Minimum Size: BinaryU
  index, minimum_size = miax_onyxfutures_depthofmarket_mach_v1_0_b.minimum_size.dissect(buffer, index, packet, parent)

  -- Maximum Size: BinaryU
  index, maximum_size = miax_onyxfutures_depthofmarket_mach_v1_0_b.maximum_size.dissect(buffer, index, packet, parent)

  -- Tick: Price9S
  index, tick = miax_onyxfutures_depthofmarket_mach_v1_0_b.tick.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alphanumeric
  index, unit_of_measure = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Quantity: BinaryU
  index, unit_of_measure_quantity = miax_onyxfutures_depthofmarket_mach_v1_0_b.unit_of_measure_quantity.dissect(buffer, index, packet, parent)

  -- Settlement Price: Price9S
  index, settlement_price = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Type Calc Method: Alphanumeric
  index, settlement_price_type_calc_method = miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_type_calc_method.dissect(buffer, index, packet, parent)

  -- Total Volume: BinaryU
  index, total_volume = miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Quantity: BinaryU
  index, open_interest_quantity = miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_quantity.dissect(buffer, index, packet, parent)

  -- High Limit Price: Price9S
  index, high_limit_price = miax_onyxfutures_depthofmarket_mach_v1_0_b.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: Price9S
  index, low_limit_price = miax_onyxfutures_depthofmarket_mach_v1_0_b.low_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation Type: Alphanumeric
  index, trading_collar_variation_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation_type.dissect(buffer, index, packet, parent)

  -- Trading Collar Variation: Price9S
  index, trading_collar_variation = miax_onyxfutures_depthofmarket_mach_v1_0_b.trading_collar_variation.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_depthofmarket_mach_v1_0_b.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Instrument Definition Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.simple_instrument_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.simple_instrument_definition_message, buffer(offset, 0))
    local index = miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_onyxfutures_depthofmarket_mach_v1_0_b.data = {}

-- Calculate runtime size of: Data
miax_onyxfutures_depthofmarket_mach_v1_0_b.data.size = function(buffer, offset, message_type)
  -- Size of Simple Instrument Definition Message
  if message_type == 1 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.size(buffer, offset)
  end
  -- Size of Complex Instrument Definition Message
  if message_type == 2 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == 3 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.size(buffer, offset)
  end
  -- Size of Instrument Trading Status Notification Message
  if message_type == 4 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.size(buffer, offset)
  end
  -- Size of Anticipated Opening Price Message
  if message_type == 5 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.size(buffer, offset)
  end
  -- Size of Settlement Price Update Message
  if message_type == 6 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.size(buffer, offset)
  end
  -- Size of Open Interest Update Message
  if message_type == 7 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.size(buffer, offset)
  end
  -- Size of Total Volume Update Message
  if message_type == 8 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.size(buffer, offset)
  end
  -- Size of Instrument Clear Message
  if message_type == 9 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.size(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == 10 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.size(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == 11 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 12 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.size(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == 13 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == 14 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_onyxfutures_depthofmarket_mach_v1_0_b.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_onyxfutures_depthofmarket_mach_v1_0_b.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Simple Instrument Definition Message
  if message_type == 1 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.simple_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Message
  if message_type == 2 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.complex_instrument_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == 3 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Notification Message
  if message_type == 4 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anticipated Opening Price Message
  if message_type == 5 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.anticipated_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Price Update Message
  if message_type == 6 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.settlement_price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Update Message
  if message_type == 7 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.open_interest_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Total Volume Update Message
  if message_type == 8 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.total_volume_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Clear Message
  if message_type == 9 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.instrument_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 10 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 11 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 12 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 13 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 14 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_onyxfutures_depthofmarket_mach_v1_0_b.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_depthofmarket_mach_v1_0_b.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.data, range, display)

  return miax_onyxfutures_depthofmarket_mach_v1_0_b.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type = {}

-- Size: Message Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.display = function(value)
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
  if value == 5 then
    return "Message Type: Anticipated Opening Price Message (5)"
  end
  if value == 6 then
    return "Message Type: Settlement Price Update Message (6)"
  end
  if value == 7 then
    return "Message Type: Open Interest Update Message (7)"
  end
  if value == 8 then
    return "Message Type: Total Volume Update Message (8)"
  end
  if value == 9 then
    return "Message Type: Instrument Clear Message (9)"
  end
  if value == 10 then
    return "Message Type: Add Order Message (10)"
  end
  if value == 11 then
    return "Message Type: Modify Order Message (11)"
  end
  if value == 12 then
    return "Message Type: Delete Order Message (12)"
  end
  if value == 13 then
    return "Message Type: Order Execution Message (13)"
  end
  if value == 14 then
    return "Message Type: Trade Cancel Message (14)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message = {}

-- Read runtime size of: Application Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 14 branches
  index = miax_onyxfutures_depthofmarket_mach_v1_0_b.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.application_message, range, display)
  end

  miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_onyxfutures_depthofmarket_mach_v1_0_b.payload = {}

-- Calculate runtime size of: Payload
miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.payload, range, display)

  return miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number = {}

-- Size: Session Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.size = 1

-- Display: Session Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.display = function(value)
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
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.message = {}

-- Calculate size of: Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.size

  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):uint()
  index = index + miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_depthofmarket_mach_v1_0_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_depthofmarket_mach_v1_0_b.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_depthofmarket_mach_v1_0_b.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_onyxfutures_depthofmarket_mach_v1_0_b.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_onyxfutures_depthofmarket_mach_v1_0_b.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_onyxfutures_depthofmarket_mach_v1_0_b.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_depthofmarket_mach_v1_0_b.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.fields.message, range, display)
  end

  return miax_onyxfutures_depthofmarket_mach_v1_0_b.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet = {}

-- Dissect Packet
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_onyxfutures_depthofmarket_mach_v1_0_b.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.init()
end

-- Dissector for Miax OnyxFutures DepthOfMarket Mach 1.0.b
function omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_depthofmarket_mach_v1_0_b, buffer(), omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_depthofmarket_mach_v1_0_b.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_onyxfutures_depthofmarket_mach_v1_0_b)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_onyxfutures_depthofmarket_mach_v1_0_b.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures DepthOfMarket Mach 1.0.b
local function omi_miax_onyxfutures_depthofmarket_mach_v1_0_b_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_depthofmarket_mach_v1_0_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_depthofmarket_mach_v1_0_b
  omi_miax_onyxfutures_depthofmarket_mach_v1_0_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures DepthOfMarket Mach 1.0.b
omi_miax_onyxfutures_depthofmarket_mach_v1_0_b:register_heuristic("udp", omi_miax_onyxfutures_depthofmarket_mach_v1_0_b_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
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
