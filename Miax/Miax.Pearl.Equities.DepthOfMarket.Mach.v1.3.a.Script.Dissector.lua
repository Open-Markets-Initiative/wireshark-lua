-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Pearl Equities DepthOfMarket Mach 1.3.a Protocol
local miax_pearl_equities_depthofmarket_mach_v1_3_a = Proto("Miax.Pearl.Equities.DepthOfMarket.Mach.v1.3.a.Lua", "Miax Pearl Equities DepthOfMarket Mach 1.3.a")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Pearl Equities DepthOfMarket Mach 1.3.a Fields
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.add_order_message = ProtoField.new("Add Order Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.addordermessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.application_message = ProtoField.new("Application Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.applicationmessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.attributable_id = ProtoField.new("Attributable Id", "miax.pearl.equities.depthofmarket.mach.v1.3.a.attributableid", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearl.equities.depthofmarket.mach.v1.3.a.closingtime", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearl.equities.depthofmarket.mach.v1.3.a.correctionnumber", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.data = ProtoField.new("Data", "miax.pearl.equities.depthofmarket.mach.v1.3.a.data", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.deleteordermessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.do_m_version = ProtoField.new("Do M Version", "miax.pearl.equities.depthofmarket.mach.v1.3.a.domversion", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearl.equities.depthofmarket.mach.v1.3.a.lotsize", ftypes.UINT16)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.market_state = ProtoField.new("Market State", "miax.pearl.equities.depthofmarket.mach.v1.3.a.marketstate", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.message = ProtoField.new("Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.message", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.message_type = ProtoField.new("Message Type", "miax.pearl.equities.depthofmarket.mach.v1.3.a.messagetype", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.modify_order_flags = ProtoField.new("Modify Order Flags", "miax.pearl.equities.depthofmarket.mach.v1.3.a.modifyorderflags", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.modifyordermessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearl.equities.depthofmarket.mach.v1.3.a.openingtime", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_execution_flags = ProtoField.new("Order Execution Flags", "miax.pearl.equities.depthofmarket.mach.v1.3.a.orderexecutionflags", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.orderexecutionmessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_id = ProtoField.new("Order Id", "miax.pearl.equities.depthofmarket.mach.v1.3.a.orderid", ftypes.UINT64)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_position = ProtoField.new("Order Position", "miax.pearl.equities.depthofmarket.mach.v1.3.a.orderposition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_side = ProtoField.new("Order Side", "miax.pearl.equities.depthofmarket.mach.v1.3.a.orderside", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.packet = ProtoField.new("Packet", "miax.pearl.equities.depthofmarket.mach.v1.3.a.packet", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearl.equities.depthofmarket.mach.v1.3.a.packetlength", ftypes.UINT16)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearl.equities.depthofmarket.mach.v1.3.a.packettype", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.payload = ProtoField.new("Payload", "miax.pearl.equities.depthofmarket.mach.v1.3.a.payload", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.price = ProtoField.new("Price", "miax.pearl.equities.depthofmarket.mach.v1.3.a.price", ftypes.UINT64)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearl.equities.depthofmarket.mach.v1.3.a.primarymarketcode", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.reportable = ProtoField.new("Reportable", "miax.pearl.equities.depthofmarket.mach.v1.3.a.reportable", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.reserved = ProtoField.new("Reserved", "miax.pearl.equities.depthofmarket.mach.v1.3.a.reserved", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.securitytradingstatusnotificationmessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearl.equities.depthofmarket.mach.v1.3.a.sequencenumber", ftypes.UINT64)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.session_id = ProtoField.new("Session Id", "miax.pearl.equities.depthofmarket.mach.v1.3.a.sessionid", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.session_number = ProtoField.new("Session Number", "miax.pearl.equities.depthofmarket.mach.v1.3.a.sessionnumber", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearl.equities.depthofmarket.mach.v1.3.a.shortsalerestriction", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.size = ProtoField.new("Size", "miax.pearl.equities.depthofmarket.mach.v1.3.a.size", ftypes.UINT32)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.symbolclearmessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearl.equities.depthofmarket.mach.v1.3.a.symbolid", ftypes.UINT32)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.symbolupdatemessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_state_message = ProtoField.new("System State Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.systemstatemessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_status = ProtoField.new("System Status", "miax.pearl.equities.depthofmarket.mach.v1.3.a.systemstatus", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.systemtimemessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearl.equities.depthofmarket.mach.v1.3.a.testsecurityindicator", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearl.equities.depthofmarket.mach.v1.3.a.tickersymbol", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "miax.pearl.equities.depthofmarket.mach.v1.3.a.timestamp", ftypes.UINT32)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.tradecancelmessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_flags = ProtoField.new("Trade Flags", "miax.pearl.equities.depthofmarket.mach.v1.3.a.tradeflags", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearl.equities.depthofmarket.mach.v1.3.a.tradeid", ftypes.UINT64)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_message = ProtoField.new("Trade Message", "miax.pearl.equities.depthofmarket.mach.v1.3.a.trademessage", ftypes.STRING)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trading_status = ProtoField.new("Trading Status", "miax.pearl.equities.depthofmarket.mach.v1.3.a.tradingstatus", ftypes.UINT8)
miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.undefined = ProtoField.new("Undefined", "miax.pearl.equities.depthofmarket.mach.v1.3.a.undefined", ftypes.UINT8, nil, base.DEC, "0xFE")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Pearl Equities DepthOfMarket Mach 1.3.a Element Dissection Options
show.add_order_message = true
show.application_message = true
show.delete_order_message = true
show.message = true
show.modify_order_flags = true
show.modify_order_message = true
show.order_execution_flags = true
show.order_execution_message = true
show.packet = true
show.security_trading_status_notification_message = true
show.symbol_clear_message = true
show.symbol_update_message = true
show.system_state_message = true
show.system_time_message = true
show.trade_cancel_message = true
show.trade_flags = true
show.trade_message = true
show.data = false
show.payload = false

-- Register Miax Pearl Equities DepthOfMarket Mach 1.3.a Show Options
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags = Pref.bool("Show Modify Order Flags", show.modify_order_flags, "Parse and add Modify Order Flags to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags = Pref.bool("Show Order Execution Flags", show.order_execution_flags, "Parse and add Order Execution Flags to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message = Pref.bool("Show Security Trading Status Notification Message", show.security_trading_status_notification_message, "Parse and add Security Trading Status Notification Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message = Pref.bool("Show Symbol Update Message", show.symbol_update_message, "Parse and add Symbol Update Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message then
    show.add_order_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message
    changed = true
  end
  if show.application_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_application_message then
    show.application_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_application_message
    changed = true
  end
  if show.delete_order_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message then
    show.delete_order_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message
    changed = true
  end
  if show.message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_message then
    show.message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_message
    changed = true
  end
  if show.modify_order_flags ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags then
    show.modify_order_flags = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags
    changed = true
  end
  if show.modify_order_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message then
    show.modify_order_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message
    changed = true
  end
  if show.order_execution_flags ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags then
    show.order_execution_flags = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags
    changed = true
  end
  if show.order_execution_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message then
    show.order_execution_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_packet then
    show.packet = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.security_trading_status_notification_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message then
    show.security_trading_status_notification_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message
    changed = true
  end
  if show.symbol_clear_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message then
    show.symbol_clear_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_update_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message then
    show.symbol_update_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message
    changed = true
  end
  if show.system_state_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message then
    show.system_state_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message then
    show.system_time_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message
    changed = true
  end
  if show.trade_cancel_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_flags ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags then
    show.trade_flags = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_message then
    show.trade_message = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_trade_message
    changed = true
  end
  if show.data ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_data then
    show.data = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_payload then
    show.payload = miax_pearl_equities_depthofmarket_mach_v1_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Pearl Equities DepthOfMarket Mach 1.3.a
-----------------------------------------------------------------------

-- Size: Size
size_of.size = 4

-- Display: Size
display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
dissect.size = function(buffer, offset, packet, parent)
  local length = size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
size_of.correction_number = 1

-- Display: Correction Number
display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
dissect.correction_number = function(buffer, offset, packet, parent)
  local length = size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
size_of.trade_id = 8

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol Id
size_of.symbol_id = 4

-- Display: Symbol Id
display.symbol_id = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
dissect.symbol_id = function(buffer, offset, packet, parent)
  local length = size_of.symbol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.symbol_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.trade_id

  index = index + size_of.correction_number

  index = index + size_of.price

  index = index + size_of.size

  return index
end

-- Display: Trade Cancel Message
display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local length = size_of.trade_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_cancel_message, range, display)
  end

  return dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Flags
size_of.trade_flags = 1

-- Display: Trade Flags
display.trade_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Reportable flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Reportable|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
dissect.trade_flags_bits = function(buffer, offset, packet, parent)

  -- Undefined: 7 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.undefined, buffer(offset, 1))

  -- Reportable: 1 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.reportable, buffer(offset, 1))
end

-- Dissect: Trade Flags
dissect.trade_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trade_flags(range, packet, parent)
  local element = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_flags, range, display)

  if show.trade_flags then
    dissect.trade_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.trade_id

  index = index + size_of.correction_number

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.trade_flags

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = dissect.trade_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Execution Flags
size_of.order_execution_flags = 1

-- Display: Order Execution Flags
display.order_execution_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Reportable flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Reportable|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Execution Flags
dissect.order_execution_flags_bits = function(buffer, offset, packet, parent)

  -- Undefined: 7 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.undefined, buffer(offset, 1))

  -- Reportable: 1 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.reportable, buffer(offset, 1))
end

-- Dissect: Order Execution Flags
dissect.order_execution_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.order_execution_flags(range, packet, parent)
  local element = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_execution_flags, range, display)

  if show.order_execution_flags then
    dissect.order_execution_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Execution Message
size_of.order_execution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.order_id

  index = index + size_of.trade_id

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.order_execution_flags

  return index
end

-- Display: Order Execution Message
display.order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Message
dissect.order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Order Execution Flags: Struct of 2 fields
  index, order_execution_flags = dissect.order_execution_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
dissect.order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_message then
    local length = size_of.order_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_execution_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_execution_message, range, display)
  end

  return dissect.order_execution_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.order_id

  return index
end

-- Display: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.delete_order_message, range, display)
  end

  return dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Modify Order Flags
size_of.modify_order_flags = 1

-- Display: Modify Order Flags
display.modify_order_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Order Position flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Order Position|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Order Flags
dissect.modify_order_flags_bits = function(buffer, offset, packet, parent)

  -- Undefined: 7 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.undefined, buffer(offset, 1))

  -- Order Position: 1 Bit
  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_position, buffer(offset, 1))
end

-- Dissect: Modify Order Flags
dissect.modify_order_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.modify_order_flags(range, packet, parent)
  local element = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.modify_order_flags, range, display)

  if show.modify_order_flags then
    dissect.modify_order_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Modify Order Message
size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.modify_order_flags

  return index
end

-- Display: Modify Order Message
display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Modify Order Flags: Struct of 2 fields
  index, modify_order_flags = dissect.modify_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.modify_order_message, range, display)
  end

  return dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Attributable Id
size_of.attributable_id = 4

-- Display: Attributable Id
display.attributable_id = function(value)
  return "Attributable Id: "..value
end

-- Dissect: Attributable Id
dissect.attributable_id = function(buffer, offset, packet, parent)
  local length = size_of.attributable_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.attributable_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.attributable_id, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.order_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Message
size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.order_id

  index = index + size_of.order_side

  index = index + size_of.price

  index = index + size_of.size

  index = index + size_of.attributable_id

  return index
end

-- Display: Add Order Message
display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = dissect.size(buffer, index, packet, parent)

  -- Attributable Id: 4 Byte Ascii String
  index, attributable_id = dissect.attributable_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.add_order_message, range, display)
  end

  return dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Symbol Clear Message
size_of.symbol_clear_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  return index
end

-- Display: Symbol Clear Message
display.symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Clear Message
dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_clear_message then
    local length = size_of.symbol_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_clear_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_clear_message, range, display)
  end

  return dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Sale Restriction
size_of.short_sale_restriction = 1

-- Display: Short Sale Restriction
display.short_sale_restriction = function(value)
  if value == "Y" then
    return "Short Sale Restriction: Ssr In Effect (Y)"
  end
  if value == "N" then
    return "Short Sale Restriction: Ssr Not In Effect (N)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
dissect.short_sale_restriction = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_restriction
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_sale_restriction(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Size: Market State
size_of.market_state = 1

-- Display: Market State
display.market_state = function(value)
  if value == 1 then
    return "Market State: Pre Opening (1)"
  end
  if value == 2 then
    return "Market State: Early Trading (2)"
  end
  if value == 3 then
    return "Market State: Regular Trading (3)"
  end
  if value == 4 then
    return "Market State: After Hours Trading (4)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
dissect.market_state = function(buffer, offset, packet, parent)
  local length = size_of.market_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_state(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
  if value == 1 then
    return "Trading Status: Pre Open (1)"
  end
  if value == 2 then
    return "Trading Status: Trading (2)"
  end
  if value == 3 then
    return "Trading Status: Halt (3)"
  end
  if value == 4 then
    return "Trading Status: Operational Halt (4)"
  end
  if value == 5 then
    return "Trading Status: Closed (5)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Trading Status Notification Message
size_of.security_trading_status_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.trading_status

  index = index + size_of.market_state

  index = index + size_of.short_sale_restriction

  return index
end

-- Display: Security Trading Status Notification Message
display.security_trading_status_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
dissect.security_trading_status_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Market State: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_state = dissect.market_state(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Ascii String Enum with 2 values
  index, short_sale_restriction = dissect.short_sale_restriction(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
dissect.security_trading_status_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_trading_status_notification_message then
    local length = size_of.security_trading_status_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_trading_status_notification_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.security_trading_status_notification_message, range, display)
  end

  return dissect.security_trading_status_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
size_of.system_status = 1

-- Display: System Status
display.system_status = function(value)
  if value == "S" then
    return "System Status: Start (S)"
  end
  if value == "C" then
    return "System Status: End (C)"
  end
  if value == "1" then
    return "System Status: Start (1)"
  end
  if value == "2" then
    return "System Status: End (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
dissect.system_status = function(buffer, offset, packet, parent)
  local length = size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
size_of.session_id = 1

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Do M Version
size_of.do_m_version = 8

-- Display: Do M Version
display.do_m_version = function(value)
  return "Do M Version: "..value
end

-- Dissect: Do M Version
dissect.do_m_version = function(buffer, offset, packet, parent)
  local length = size_of.do_m_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.do_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.do_m_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.do_m_version

  index = index + size_of.session_id

  index = index + size_of.system_status

  return index
end

-- Display: System State Message
display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Do M Version: 8 Byte Ascii String
  index, do_m_version = dissect.do_m_version(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index, system_status = dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local length = size_of.system_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_state_message, range, display)
  end

  return dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Primary Market Code
size_of.primary_market_code = 1

-- Display: Primary Market Code
display.primary_market_code = function(value)
  if value == "A" then
    return "Primary Market Code: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Market Code: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Primary Market Code: Nyse National (C)"
  end
  if value == "H" then
    return "Primary Market Code: Miax Pearl Equities (H)"
  end
  if value == "I" then
    return "Primary Market Code: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Primary Market Code: Cboe Edga Exchange (J)"
  end
  if value == "K" then
    return "Primary Market Code: Cboe Edgx Exchange (K)"
  end
  if value == "L" then
    return "Primary Market Code: Long Term Stock Exchange (L)"
  end
  if value == "M" then
    return "Primary Market Code: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Primary Market Code: New York Stock Exchange (N)"
  end
  if value == "P" then
    return "Primary Market Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Primary Market Code: Nasdaq (Q)"
  end
  if value == "U" then
    return "Primary Market Code: Members Exchange (U)"
  end
  if value == "V" then
    return "Primary Market Code: Investors Exchange (V)"
  end
  if value == "W" then
    return "Primary Market Code: Cboe Stock Exchange (W)"
  end
  if value == "X" then
    return "Primary Market Code: Nasdaq Phlx (X)"
  end
  if value == "Y" then
    return "Primary Market Code: Cboe Byx Exchange (Y)"
  end
  if value == "Z" then
    return "Primary Market Code: Cboe Bzx Exchange (Z)"
  end

  return "Primary Market Code: Unknown("..value..")"
end

-- Dissect: Primary Market Code
dissect.primary_market_code = function(buffer, offset, packet, parent)
  local length = size_of.primary_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
size_of.closing_time = 8

-- Display: Closing Time
display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
dissect.closing_time = function(buffer, offset, packet, parent)
  local length = size_of.closing_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
size_of.opening_time = 8

-- Display: Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
dissect.opening_time = function(buffer, offset, packet, parent)
  local length = size_of.opening_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
size_of.lot_size = 2

-- Display: Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local length = size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Test Security Indicator
size_of.test_security_indicator = 1

-- Display: Test Security Indicator
display.test_security_indicator = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
dissect.test_security_indicator = function(buffer, offset, packet, parent)
  local length = size_of.test_security_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.test_security_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ticker Symbol
size_of.ticker_symbol = 11

-- Display: Ticker Symbol
display.ticker_symbol = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
dissect.ticker_symbol = function(buffer, offset, packet, parent)
  local length = size_of.ticker_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ticker_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Update Message
size_of.symbol_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  index = index + size_of.symbol_id

  index = index + size_of.ticker_symbol

  index = index + size_of.reserved

  index = index + size_of.test_security_indicator

  index = index + size_of.reserved

  index = index + size_of.lot_size

  index = index + size_of.opening_time

  index = index + size_of.closing_time

  index = index + size_of.primary_market_code

  return index
end

-- Display: Symbol Update Message
display.symbol_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Update Message
dissect.symbol_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = dissect.symbol_id(buffer, index, packet, parent)

  -- Ticker Symbol: 11 Byte Ascii String
  index, ticker_symbol = dissect.ticker_symbol(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Test Security Indicator: 1 Byte Ascii String Enum with 2 values
  index, test_security_indicator = dissect.test_security_indicator(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = dissect.lot_size(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index, opening_time = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index, closing_time = dissect.closing_time(buffer, index, packet, parent)

  -- Primary Market Code: 1 Byte Ascii String Enum with 18 values
  index, primary_market_code = dissect.primary_market_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
dissect.symbol_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_update_message then
    local length = size_of.symbol_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_update_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.symbol_update_message, range, display)
  end

  return dissect.symbol_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: System Time Message
size_of.system_time_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp

  return index
end

-- Display: System Time Message
display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Time Message
dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
dissect.system_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_time_message then
    local length = size_of.system_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_time_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.system_time_message, range, display)
  end

  return dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "49" then
    return size_of.system_time_message(buffer, offset)
  end
  -- Size of Symbol Update Message
  if message_type == "1" then
    return size_of.symbol_update_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "83" then
    return size_of.system_state_message(buffer, offset)
  end
  -- Size of Security Trading Status Notification Message
  if message_type == "4" then
    return size_of.security_trading_status_notification_message(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == "5" then
    return size_of.symbol_clear_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "20" then
    return size_of.add_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == "21" then
    return size_of.modify_order_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == "23" then
    return size_of.delete_order_message(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == "24" then
    return size_of.order_execution_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "10" then
    return size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "11" then
    return size_of.trade_cancel_message(buffer, offset)
  end

  return 0
end

-- Display: Data
display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "49" then
    return dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Update Message
  if message_type == "1" then
    return dissect.symbol_update_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "83" then
    return dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Notification Message
  if message_type == "4" then
    return dissect.security_trading_status_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == "5" then
    return dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "20" then
    return dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "21" then
    return dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == "23" then
    return dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == "24" then
    return dissect.order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "10" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "11" then
    return dissect.trade_cancel_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.data, range, display)

  return dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "49" then
    return "Message Type: System Time Message (49)"
  end
  if value == "1" then
    return "Message Type: Symbol Update Message (1)"
  end
  if value == "83" then
    return "Message Type: System State Message (83)"
  end
  if value == "4" then
    return "Message Type: Security Trading Status Notification Message (4)"
  end
  if value == "5" then
    return "Message Type: Symbol Clear Message (5)"
  end
  if value == "20" then
    return "Message Type: Add Order Message (20)"
  end
  if value == "21" then
    return "Message Type: Modify Order Message (21)"
  end
  if value == "23" then
    return "Message Type: Delete Order Message (23)"
  end
  if value == "24" then
    return "Message Type: Order Execution Message (24)"
  end
  if value == "10" then
    return "Message Type: Trade Message (10)"
  end
  if value == "11" then
    return "Message Type: Trade Cancel Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Application Message
size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + size_of.data(buffer, data_offset, data_type)

  return index
end

-- Display: Application Message
display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 11 branches
  index = dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.application_message then
    local length = size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.application_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.application_message, range, display)
  end

  return dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
size_of.session_number = 1

-- Display: Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
dissect.session_number = function(buffer, offset, packet, parent)
  local length = size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
size_of.packet_type = 1

-- Display: Packet Type
display.packet_type = function(value)
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
dissect.packet_type = function(buffer, offset, packet, parent)
  local length = size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
size_of.packet_length = 2

-- Display: Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local length = size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 8

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.sequence_number

  index = index + size_of.packet_length

  index = index + size_of.packet_type

  index = index + size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message: Struct of 5 fields
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_pearl_equities_depthofmarket_mach_v1_3_a.init()
end

-- Dissector for Miax Pearl Equities DepthOfMarket Mach 1.3.a
function miax_pearl_equities_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_pearl_equities_depthofmarket_mach_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(miax_pearl_equities_depthofmarket_mach_v1_3_a, buffer(), miax_pearl_equities_depthofmarket_mach_v1_3_a.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_pearl_equities_depthofmarket_mach_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_pearl_equities_depthofmarket_mach_v1_3_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Pearl Equities DepthOfMarket Mach 1.3.a
local function miax_pearl_equities_depthofmarket_mach_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_pearl_equities_depthofmarket_mach_v1_3_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_pearl_equities_depthofmarket_mach_v1_3_a
  miax_pearl_equities_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax Pearl Equities DepthOfMarket Mach 1.3.a
miax_pearl_equities_depthofmarket_mach_v1_3_a:register_heuristic("udp", miax_pearl_equities_depthofmarket_mach_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 1.3.a
--   Date: Thursday, November 5, 2020
--   Specification: MIAX_PEARL_Equities_DoM_Feed_v1.3a.pdf
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
