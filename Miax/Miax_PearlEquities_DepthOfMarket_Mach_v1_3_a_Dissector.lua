-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.a Protocol
local omi_miax_pearlequities_depthofmarket_mach_v1_3_a = Proto("Miax.PearlEquities.DepthOfMarket.Mach.v1.3.a.Lua", "Miax PearlEquities DepthOfMarket Mach 1.3.a")

-- Protocol table
local miax_pearlequities_depthofmarket_mach_v1_3_a = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.a Fields
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.application_message = ProtoField.new("Application Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.applicationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.attributable_id = ProtoField.new("Attributable Id", "miax.pearlequities.depthofmarket.mach.v1.3.a.attributableid", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.depthofmarket.mach.v1.3.a.closingtime", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.depthofmarket.mach.v1.3.a.correctionnumber", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.data = ProtoField.new("Data", "miax.pearlequities.depthofmarket.mach.v1.3.a.data", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.do_m_version = ProtoField.new("Do M Version", "miax.pearlequities.depthofmarket.mach.v1.3.a.domversion", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.depthofmarket.mach.v1.3.a.lotsize", ftypes.UINT16)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.market_state = ProtoField.new("Market State", "miax.pearlequities.depthofmarket.mach.v1.3.a.marketstate", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.message = ProtoField.new("Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.message", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.message_type = ProtoField.new("Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.a.messagetype", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.modify_order_flags = ProtoField.new("Modify Order Flags", "miax.pearlequities.depthofmarket.mach.v1.3.a.modifyorderflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.depthofmarket.mach.v1.3.a.openingtime", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_execution_flags = ProtoField.new("Order Execution Flags", "miax.pearlequities.depthofmarket.mach.v1.3.a.orderexecutionflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.depthofmarket.mach.v1.3.a.orderid", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_position = ProtoField.new("Order Position", "miax.pearlequities.depthofmarket.mach.v1.3.a.orderposition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_side = ProtoField.new("Order Side", "miax.pearlequities.depthofmarket.mach.v1.3.a.orderside", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.packet = ProtoField.new("Packet", "miax.pearlequities.depthofmarket.mach.v1.3.a.packet", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearlequities.depthofmarket.mach.v1.3.a.packetlength", ftypes.UINT16)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearlequities.depthofmarket.mach.v1.3.a.packettype", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.payload = ProtoField.new("Payload", "miax.pearlequities.depthofmarket.mach.v1.3.a.payload", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.price = ProtoField.new("Price", "miax.pearlequities.depthofmarket.mach.v1.3.a.price", ftypes.DOUBLE)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.depthofmarket.mach.v1.3.a.primarymarketcode", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.reportable = ProtoField.new("Reportable", "miax.pearlequities.depthofmarket.mach.v1.3.a.reportable", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.depthofmarket.mach.v1.3.a.reserved1", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.a.sequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.a.sessionid", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.session_number = ProtoField.new("Session Number", "miax.pearlequities.depthofmarket.mach.v1.3.a.sessionnumber", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearlequities.depthofmarket.mach.v1.3.a.shortsalerestriction", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.size = ProtoField.new("Size", "miax.pearlequities.depthofmarket.mach.v1.3.a.size", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.depthofmarket.mach.v1.3.a.symbolid", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.depthofmarket.mach.v1.3.a.systemstatus", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.depthofmarket.mach.v1.3.a.testsecurityindicator", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.depthofmarket.mach.v1.3.a.tickersymbol", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "miax.pearlequities.depthofmarket.mach.v1.3.a.timestamp", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_flags = ProtoField.new("Trade Flags", "miax.pearlequities.depthofmarket.mach.v1.3.a.tradeflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.depthofmarket.mach.v1.3.a.tradeid", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trading_status = ProtoField.new("Trading Status", "miax.pearlequities.depthofmarket.mach.v1.3.a.tradingstatus", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.unused_7 = ProtoField.new("Unused 7", "miax.pearlequities.depthofmarket.mach.v1.3.a.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)

-- Miax PearlEquities DepthOfMarket Mach 1.3.a messages
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.add_order_message = ProtoField.new("Add Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.addordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.deleteordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.modifyordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.orderexecutionmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.securitytradingstatusnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.symbolclearmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.symbolupdatemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_state_message = ProtoField.new("System State Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.systemstatemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.systemtimemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.tradecancelmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_message = ProtoField.new("Trade Message", "miax.pearlequities.depthofmarket.mach.v1.3.a.trademessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.a Element Dissection Options
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

-- Register Miax PearlEquities DepthOfMarket Mach 1.3.a Show Options
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags = Pref.bool("Show Modify Order Flags", show.modify_order_flags, "Parse and add Modify Order Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags = Pref.bool("Show Order Execution Flags", show.order_execution_flags, "Parse and add Order Execution Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message = Pref.bool("Show Security Trading Status Notification Message", show.security_trading_status_notification_message, "Parse and add Security Trading Status Notification Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message = Pref.bool("Show Symbol Update Message", show.symbol_update_message, "Parse and add Symbol Update Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message then
    show.add_order_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_add_order_message
    changed = true
  end
  if show.application_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_application_message then
    show.application_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_application_message
    changed = true
  end
  if show.delete_order_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message then
    show.delete_order_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_delete_order_message
    changed = true
  end
  if show.message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_message then
    show.message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_message
    changed = true
  end
  if show.modify_order_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags then
    show.modify_order_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_flags
    changed = true
  end
  if show.modify_order_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message then
    show.modify_order_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_modify_order_message
    changed = true
  end
  if show.order_execution_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags then
    show.order_execution_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_flags
    changed = true
  end
  if show.order_execution_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message then
    show.order_execution_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_order_execution_message
    changed = true
  end
  if show.packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_packet then
    show.packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.security_trading_status_notification_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message then
    show.security_trading_status_notification_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_security_trading_status_notification_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_update_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message then
    show.symbol_update_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_symbol_update_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message then
    show.system_state_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message then
    show.system_time_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_system_time_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags then
    show.trade_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_message then
    show.trade_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_trade_message
    changed = true
  end
  if show.data ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_data then
    show.data = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_payload then
    show.payload = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.prefs.show_payload
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
-- Dissect Miax PearlEquities DepthOfMarket Mach 1.3.a
-----------------------------------------------------------------------

-- Size
miax_pearlequities_depthofmarket_mach_v1_3_a.size = {}

-- Size: Size
miax_pearlequities_depthofmarket_mach_v1_3_a.size.size = 4

-- Display: Size
miax_pearlequities_depthofmarket_mach_v1_3_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.size, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_depthofmarket_mach_v1_3_a.price = {}

-- Size: Price
miax_pearlequities_depthofmarket_mach_v1_3_a.price.size = 8

-- Display: Price
miax_pearlequities_depthofmarket_mach_v1_3_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_depthofmarket_mach_v1_3_a.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_depthofmarket_mach_v1_3_a.price.translate(raw)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number = {}

-- Size: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id = {}

-- Size: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp = {}

-- Size: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size = 4

-- Display: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message = {}

-- Calculate size of: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.price.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.size.size

  return index
end

-- Display: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Reportable
miax_pearlequities_depthofmarket_mach_v1_3_a.reportable = {}

-- Unused 7
miax_pearlequities_depthofmarket_mach_v1_3_a.unused_7 = {}

-- Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags = {}

-- Size: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.size = 1

-- Display: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Reportable flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Reportable|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.bits = function(buffer, offset, packet, parent)

  -- Unused 7: 7 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.unused_7, buffer(offset, 1))

  -- Reportable: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.reportable, buffer(offset, 1))
end

-- Dissect: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_flags, range, display)

  if show.trade_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message = {}

-- Calculate size of: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.price.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.size.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.size

  return index
end

-- Display: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 2 fields
  index, trade_flags = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trade_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags = {}

-- Size: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.size = 1

-- Display: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Reportable flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Reportable|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.bits = function(buffer, offset, packet, parent)

  -- Unused 7: 7 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.unused_7, buffer(offset, 1))

  -- Reportable: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.reportable, buffer(offset, 1))
end

-- Dissect: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_execution_flags, range, display)

  if show.order_execution_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Order Id
miax_pearlequities_depthofmarket_mach_v1_3_a.order_id = {}

-- Size: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size = 8

-- Display: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message = {}

-- Calculate size of: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.price.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.size.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.size

  return index
end

-- Display: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Order Execution Flags: Struct of 2 fields
  index, order_execution_flags = miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.order_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_execution_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message = {}

-- Calculate size of: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size

  return index
end

-- Display: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.delete_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Position
miax_pearlequities_depthofmarket_mach_v1_3_a.order_position = {}

-- Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags = {}

-- Size: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.size = 1

-- Display: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Order Position flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Order Position|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.bits = function(buffer, offset, packet, parent)

  -- Unused 7: 7 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.unused_7, buffer(offset, 1))

  -- Order Position: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_position, buffer(offset, 1))
end

-- Dissect: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.modify_order_flags, range, display)

  if show.modify_order_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message = {}

-- Calculate size of: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.price.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.size.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.size

  return index
end

-- Display: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Modify Order Flags: Struct of 2 fields
  index, modify_order_flags = miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.modify_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id = {}

-- Size: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.size = 4

-- Display: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.display = function(value)
  return "Attributable Id: "..value
end

-- Dissect: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.attributable_id, range, value, display)

  return offset + length, value
end

-- Order Side
miax_pearlequities_depthofmarket_mach_v1_3_a.order_side = {}

-- Size: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.size = 1

-- Display: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.order_side, range, value, display)

  return offset + length, value
end

-- Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message = {}

-- Calculate size of: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.price.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.size.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.size

  return index
end

-- Display: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_a.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_pearlequities_depthofmarket_mach_v1_3_a.order_side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_a.size.dissect(buffer, index, packet, parent)

  -- Attributable Id: Alphanumeric
  index, attributable_id = miax_pearlequities_depthofmarket_mach_v1_3_a.attributable_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.add_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message = {}

-- Calculate size of: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  return index
end

-- Display: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_clear_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction = {}

-- Size: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.display = function(value)
  if value == "Y" then
    return "Short Sale Restriction: Ssr In Effect (Y)"
  end
  if value == "N" then
    return "Short Sale Restriction: Ssr Not In Effect (N)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Market State
miax_pearlequities_depthofmarket_mach_v1_3_a.market_state = {}

-- Size: Market State
miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.size = 1

-- Display: Market State
miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status = {}

-- Size: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.size = 1

-- Display: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message = {}

-- Calculate size of: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.size

  return index
end

-- Display: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_pearlequities_depthofmarket_mach_v1_3_a.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_pearlequities_depthofmarket_mach_v1_3_a.market_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Alphanumeric
  index, short_sale_restriction = miax_pearlequities_depthofmarket_mach_v1_3_a.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.security_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_pearlequities_depthofmarket_mach_v1_3_a.system_status = {}

-- Size: System Status
miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.size = 1

-- Display: System Status
miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_depthofmarket_mach_v1_3_a.session_id = {}

-- Size: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.size = 1

-- Display: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version = {}

-- Size: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.size = 8

-- Display: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.display = function(value)
  return "Do M Version: "..value
end

-- Dissect: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.do_m_version, range, value, display)

  return offset + length, value
end

-- System State Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message = {}

-- Calculate size of: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.size

  return index
end

-- Display: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Do M Version: Alphanumeric
  index, do_m_version = miax_pearlequities_depthofmarket_mach_v1_3_a.do_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_depthofmarket_mach_v1_3_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_depthofmarket_mach_v1_3_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time = {}

-- Size: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time = {}

-- Size: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size = {}

-- Size: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.size = 2

-- Display: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.display = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message = {}

-- Calculate size of: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.size

  return index
end

-- Display: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_depthofmarket_mach_v1_3_a.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_depthofmarket_mach_v1_3_a.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_depthofmarket_mach_v1_3_a.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_depthofmarket_mach_v1_3_a.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_depthofmarket_mach_v1_3_a.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_depthofmarket_mach_v1_3_a.primary_market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message = {}

-- Calculate size of: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.size

  return index
end

-- Display: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_depthofmarket_mach_v1_3_a.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearlequities_depthofmarket_mach_v1_3_a.data = {}

-- Calculate runtime size of: Data
miax_pearlequities_depthofmarket_mach_v1_3_a.data.size = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "49" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.size(buffer, offset)
  end
  -- Size of Symbol Update Message
  if message_type == "1" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "83" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.size(buffer, offset)
  end
  -- Size of Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.size(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == "5" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.size(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "20" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.size(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == "21" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == "23" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.size(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == "24" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "10" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "11" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_pearlequities_depthofmarket_mach_v1_3_a.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_pearlequities_depthofmarket_mach_v1_3_a.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "49" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Update Message
  if message_type == "1" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "83" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.security_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == "5" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "20" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == "21" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == "23" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == "24" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "10" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "11" then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_pearlequities_depthofmarket_mach_v1_3_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_depthofmarket_mach_v1_3_a.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.data, range, display)

  return miax_pearlequities_depthofmarket_mach_v1_3_a.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_pearlequities_depthofmarket_mach_v1_3_a.message_type = {}

-- Size: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.size = 1

-- Display: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_pearlequities_depthofmarket_mach_v1_3_a.application_message = {}

-- Read runtime size of: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = miax_pearlequities_depthofmarket_mach_v1_3_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 11 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.application_message, range, display)
  end

  miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_pearlequities_depthofmarket_mach_v1_3_a.payload = {}

-- Calculate runtime size of: Payload
miax_pearlequities_depthofmarket_mach_v1_3_a.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearlequities_depthofmarket_mach_v1_3_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearlequities_depthofmarket_mach_v1_3_a.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearlequities_depthofmarket_mach_v1_3_a.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearlequities_depthofmarket_mach_v1_3_a.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_depthofmarket_mach_v1_3_a.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.payload, range, display)

  return miax_pearlequities_depthofmarket_mach_v1_3_a.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_pearlequities_depthofmarket_mach_v1_3_a.session_number = {}

-- Size: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.size = 1

-- Display: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type = {}

-- Size: Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.size = 1

-- Display: Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length = {}

-- Size: Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.size = 2

-- Display: Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_pearlequities_depthofmarket_mach_v1_3_a.message = {}

-- Calculate size of: Message
miax_pearlequities_depthofmarket_mach_v1_3_a.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_pearlequities_depthofmarket_mach_v1_3_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_pearlequities_depthofmarket_mach_v1_3_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_pearlequities_depthofmarket_mach_v1_3_a.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearlequities_depthofmarket_mach_v1_3_a.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearlequities_depthofmarket_mach_v1_3_a.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_a.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_pearlequities_depthofmarket_mach_v1_3_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_pearlequities_depthofmarket_mach_v1_3_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a.fields.message, range, display)
  end

  return miax_pearlequities_depthofmarket_mach_v1_3_a.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_pearlequities_depthofmarket_mach_v1_3_a.packet = {}

-- Dissect Packet
miax_pearlequities_depthofmarket_mach_v1_3_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_pearlequities_depthofmarket_mach_v1_3_a.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearlequities_depthofmarket_mach_v1_3_a.init()
end

-- Dissector for Miax PearlEquities DepthOfMarket Mach 1.3.a
function omi_miax_pearlequities_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_depthofmarket_mach_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_a, buffer(), omi_miax_pearlequities_depthofmarket_mach_v1_3_a.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_depthofmarket_mach_v1_3_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_pearlequities_depthofmarket_mach_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_pearlequities_depthofmarket_mach_v1_3_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.a
local function omi_miax_pearlequities_depthofmarket_mach_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_depthofmarket_mach_v1_3_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_depthofmarket_mach_v1_3_a
  omi_miax_pearlequities_depthofmarket_mach_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.a
omi_miax_pearlequities_depthofmarket_mach_v1_3_a:register_heuristic("udp", omi_miax_pearlequities_depthofmarket_mach_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
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
