-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Pearl Equities TopOfMarket Mach 1.1.a Protocol
local miax_pearl_equities_topofmarket_mach_v1_1_a = Proto("Miax.Pearl.Equities.TopOfMarket.Mach.v1.1.a.Lua", "Miax Pearl Equities TopOfMarket Mach 1.1.a")

-- Component Tables
local show = {}
local format = {}
local miax_pearl_equities_topofmarket_mach_v1_1_a_display = {}
local miax_pearl_equities_topofmarket_mach_v1_1_a_dissect = {}
local miax_pearl_equities_topofmarket_mach_v1_1_a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Pearl Equities TopOfMarket Mach 1.1.a Fields
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.application_message = ProtoField.new("Application Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.applicationmessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.bid_price = ProtoField.new("Bid Price", "miax.pearl.equities.topofmarket.mach.v1.1.a.bidprice", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.bid_size = ProtoField.new("Bid Size", "miax.pearl.equities.topofmarket.mach.v1.1.a.bidsize", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearl.equities.topofmarket.mach.v1.1.a.closingtime", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message = ProtoField.new("Compact Top Of Market Best Bid And Offer Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.compacttopofmarketbestbidandoffermessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearl.equities.topofmarket.mach.v1.1.a.correctionnumber", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.data = ProtoField.new("Data", "miax.pearl.equities.topofmarket.mach.v1.1.a.data", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.lastsalemessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearl.equities.topofmarket.mach.v1.1.a.lotsize", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.market_state = ProtoField.new("Market State", "miax.pearl.equities.topofmarket.mach.v1.1.a.marketstate", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.message = ProtoField.new("Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.message", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.message_type = ProtoField.new("Message Type", "miax.pearl.equities.topofmarket.mach.v1.1.a.messagetype", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.offer_price = ProtoField.new("Offer Price", "miax.pearl.equities.topofmarket.mach.v1.1.a.offerprice", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.offer_size = ProtoField.new("Offer Size", "miax.pearl.equities.topofmarket.mach.v1.1.a.offersize", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearl.equities.topofmarket.mach.v1.1.a.openingtime", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.packet = ProtoField.new("Packet", "miax.pearl.equities.topofmarket.mach.v1.1.a.packet", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearl.equities.topofmarket.mach.v1.1.a.packetlength", ftypes.UINT16)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearl.equities.topofmarket.mach.v1.1.a.packettype", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.payload = ProtoField.new("Payload", "miax.pearl.equities.topofmarket.mach.v1.1.a.payload", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.price = ProtoField.new("Price", "miax.pearl.equities.topofmarket.mach.v1.1.a.price", ftypes.UINT64)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearl.equities.topofmarket.mach.v1.1.a.primarymarketcode", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.reserved = ProtoField.new("Reserved", "miax.pearl.equities.topofmarket.mach.v1.1.a.reserved", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.securitytradingstatusnotificationmessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearl.equities.topofmarket.mach.v1.1.a.sequencenumber", ftypes.UINT64)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.session_id = ProtoField.new("Session Id", "miax.pearl.equities.topofmarket.mach.v1.1.a.sessionid", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.session_number = ProtoField.new("Session Number", "miax.pearl.equities.topofmarket.mach.v1.1.a.sessionnumber", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearl.equities.topofmarket.mach.v1.1.a.shortsalerestriction", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.size = ProtoField.new("Size", "miax.pearl.equities.topofmarket.mach.v1.1.a.size", ftypes.UINT32)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearl.equities.topofmarket.mach.v1.1.a.symbolid", ftypes.UINT32)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.symbolupdatemessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_state_message = ProtoField.new("System State Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.systemstatemessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_status = ProtoField.new("System Status", "miax.pearl.equities.topofmarket.mach.v1.1.a.systemstatus", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.systemtimemessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearl.equities.topofmarket.mach.v1.1.a.testsecurityindicator", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearl.equities.topofmarket.mach.v1.1.a.tickersymbol", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.timestamp = ProtoField.new("Timestamp", "miax.pearl.equities.topofmarket.mach.v1.1.a.timestamp", ftypes.UINT32)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.to_m_version = ProtoField.new("To M Version", "miax.pearl.equities.topofmarket.mach.v1.1.a.tomversion", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.tradecancelmessage", ftypes.STRING)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearl.equities.topofmarket.mach.v1.1.a.tradeid", ftypes.UINT64)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trading_status = ProtoField.new("Trading Status", "miax.pearl.equities.topofmarket.mach.v1.1.a.tradingstatus", ftypes.UINT8)
miax_pearl_equities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message = ProtoField.new("Wide Top Of Market Best Bid And Offer Message", "miax.pearl.equities.topofmarket.mach.v1.1.a.widetopofmarketbestbidandoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Pearl Equities TopOfMarket Mach 1.1.a Element Dissection Options
show.application_message = true
show.compact_top_of_market_best_bid_and_offer_message = true
show.last_sale_message = true
show.message = true
show.packet = true
show.security_trading_status_notification_message = true
show.symbol_update_message = true
show.system_state_message = true
show.system_time_message = true
show.trade_cancel_message = true
show.wide_top_of_market_best_bid_and_offer_message = true
show.data = false
show.payload = false

-- Register Miax Pearl Equities TopOfMarket Mach 1.1.a Show Options
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message = Pref.bool("Show Compact Top Of Market Best Bid And Offer Message", show.compact_top_of_market_best_bid_and_offer_message, "Parse and add Compact Top Of Market Best Bid And Offer Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message = Pref.bool("Show Last Sale Message", show.last_sale_message, "Parse and add Last Sale Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message = Pref.bool("Show Security Trading Status Notification Message", show.security_trading_status_notification_message, "Parse and add Security Trading Status Notification Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message = Pref.bool("Show Symbol Update Message", show.symbol_update_message, "Parse and add Symbol Update Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message = Pref.bool("Show Wide Top Of Market Best Bid And Offer Message", show.wide_top_of_market_best_bid_and_offer_message, "Parse and add Wide Top Of Market Best Bid And Offer Message to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_pearl_equities_topofmarket_mach_v1_1_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_application_message then
    show.application_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_application_message
    changed = true
  end
  if show.compact_top_of_market_best_bid_and_offer_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message then
    show.compact_top_of_market_best_bid_and_offer_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message
    changed = true
  end
  if show.last_sale_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message then
    show.last_sale_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message
    changed = true
  end
  if show.message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_message then
    show.message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_packet then
    show.packet = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_packet
    changed = true
  end
  if show.security_trading_status_notification_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message then
    show.security_trading_status_notification_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message
    changed = true
  end
  if show.symbol_update_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message then
    show.symbol_update_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message
    changed = true
  end
  if show.system_state_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_state_message then
    show.system_state_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_time_message then
    show.system_time_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_system_time_message
    changed = true
  end
  if show.trade_cancel_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.wide_top_of_market_best_bid_and_offer_message ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message then
    show.wide_top_of_market_best_bid_and_offer_message = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message
    changed = true
  end
  if show.data ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_data then
    show.data = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_payload then
    show.payload = miax_pearl_equities_topofmarket_mach_v1_1_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Pearl Equities TopOfMarket Mach 1.1.a
-----------------------------------------------------------------------

-- Size: Size
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.size = 4

-- Display: Size
miax_pearl_equities_topofmarket_mach_v1_1_a_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.size = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.size, range, value, display)

  return offset + length, value
end

-- Size: Price
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.price = 8

-- Display: Price
miax_pearl_equities_topofmarket_mach_v1_1_a_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.price = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.price(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.correction_number = 1

-- Display: Correction Number
miax_pearl_equities_topofmarket_mach_v1_1_a_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_id = 8

-- Display: Trade Id
miax_pearl_equities_topofmarket_mach_v1_1_a_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol Id
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id = 4

-- Display: Symbol Id
miax_pearl_equities_topofmarket_mach_v1_1_a_display.symbol_id = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.symbol_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp = 4

-- Display: Timestamp
miax_pearl_equities_topofmarket_mach_v1_1_a_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.correction_number

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.size

  return index
end

-- Display: Trade Cancel Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trade_cancel_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Last Sale Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.last_sale_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.correction_number

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.size

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.flags

  return index
end

-- Display: Last Sale Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.correction_number(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.size(buffer, index, packet, parent)

  -- Flags
  index, flags = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.last_sale_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.last_sale_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.last_sale_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.last_sale_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.last_sale_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_size = 2

-- Display: Offer Size
miax_pearl_equities_topofmarket_mach_v1_1_a_display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_price = 2

-- Display: Offer Price
miax_pearl_equities_topofmarket_mach_v1_1_a_display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_price = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_size = 2

-- Display: Bid Size
miax_pearl_equities_topofmarket_mach_v1_1_a_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_price = 2

-- Display: Bid Price
miax_pearl_equities_topofmarket_mach_v1_1_a_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.wide_top_of_market_best_bid_and_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_size

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_size

  return index
end

-- Display: Wide Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.wide_top_of_market_best_bid_and_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.wide_top_of_market_best_bid_and_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index, bid_price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Price: 2 Byte Unsigned Fixed Width Integer
  index, offer_price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index, offer_size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.wide_top_of_market_best_bid_and_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_top_of_market_best_bid_and_offer_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.wide_top_of_market_best_bid_and_offer_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.wide_top_of_market_best_bid_and_offer_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.wide_top_of_market_best_bid_and_offer_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Compact Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.compact_top_of_market_best_bid_and_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.bid_size

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_price

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.offer_size

  return index
end

-- Display: Compact Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.compact_top_of_market_best_bid_and_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Compact Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.compact_top_of_market_best_bid_and_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index, bid_price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index, bid_size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Price: 2 Byte Unsigned Fixed Width Integer
  index, offer_price = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index, offer_size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Top Of Market Best Bid And Offer Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.compact_top_of_market_best_bid_and_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.compact_top_of_market_best_bid_and_offer_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.compact_top_of_market_best_bid_and_offer_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.compact_top_of_market_best_bid_and_offer_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.compact_top_of_market_best_bid_and_offer_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Sale Restriction
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.short_sale_restriction = 1

-- Display: Short Sale Restriction
miax_pearl_equities_topofmarket_mach_v1_1_a_display.short_sale_restriction = function(value)
  if value == "Y" then
    return "Short Sale Restriction: Ssr In Effect (Y)"
  end
  if value == "N" then
    return "Short Sale Restriction: Ssr Not In Effect (N)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.short_sale_restriction = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.short_sale_restriction
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.short_sale_restriction(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Size: Market State
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.market_state = 1

-- Display: Market State
miax_pearl_equities_topofmarket_mach_v1_1_a_display.market_state = function(value)
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
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.market_state = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.market_state
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.market_state(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trading_status = 1

-- Display: Trading Status
miax_pearl_equities_topofmarket_mach_v1_1_a_display.trading_status = function(value)
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
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Trading Status Notification Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.security_trading_status_notification_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trading_status

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.market_state

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.short_sale_restriction

  return index
end

-- Display: Security Trading Status Notification Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.security_trading_status_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.security_trading_status_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_status = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trading_status(buffer, index, packet, parent)

  -- Market State: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, market_state = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.market_state(buffer, index, packet, parent)

  -- Short Sale Restriction: 1 Byte Ascii String Enum with 2 values
  index, short_sale_restriction = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.short_sale_restriction(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.security_trading_status_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_trading_status_notification_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.security_trading_status_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.security_trading_status_notification_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.security_trading_status_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_status = 1

-- Display: System Status
miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_status = function(value)
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
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_id = 1

-- Display: Session Id
miax_pearl_equities_topofmarket_mach_v1_1_a_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: To M Version
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.to_m_version = 8

-- Display: To M Version
miax_pearl_equities_topofmarket_mach_v1_1_a_display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.to_m_version = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.to_m_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.to_m_version

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_status

  return index
end

-- Display: System State Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- To M Version: 8 Byte Ascii String
  index, to_m_version = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.to_m_version(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index, system_status = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_state_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Primary Market Code
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.primary_market_code = 1

-- Display: Primary Market Code
miax_pearl_equities_topofmarket_mach_v1_1_a_display.primary_market_code = function(value)
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
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.primary_market_code = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.primary_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.primary_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.closing_time = 8

-- Display: Closing Time
miax_pearl_equities_topofmarket_mach_v1_1_a_display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.closing_time = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.closing_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.opening_time = 8

-- Display: Opening Time
miax_pearl_equities_topofmarket_mach_v1_1_a_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.opening_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.lot_size = 2

-- Display: Lot Size
miax_pearl_equities_topofmarket_mach_v1_1_a_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Reserved
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.reserved = 1

-- Display: Reserved
miax_pearl_equities_topofmarket_mach_v1_1_a_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.reserved = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.reserved(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Test Security Indicator
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.test_security_indicator = 1

-- Display: Test Security Indicator
miax_pearl_equities_topofmarket_mach_v1_1_a_display.test_security_indicator = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.test_security_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.test_security_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.test_security_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ticker Symbol
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.ticker_symbol = 11

-- Display: Ticker Symbol
miax_pearl_equities_topofmarket_mach_v1_1_a_display.ticker_symbol = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.ticker_symbol = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.ticker_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.ticker_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Update Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_id

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.ticker_symbol

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.reserved

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.test_security_indicator

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.reserved

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.lot_size

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.opening_time

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.closing_time

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.primary_market_code

  return index
end

-- Display: Symbol Update Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.symbol_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_id(buffer, index, packet, parent)

  -- Ticker Symbol: 11 Byte Ascii String
  index, ticker_symbol = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.ticker_symbol(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.reserved(buffer, index, packet, parent)

  -- Test Security Indicator: 1 Byte Ascii String Enum with 2 values
  index, test_security_indicator = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.test_security_indicator(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.reserved(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.lot_size(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index, opening_time = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index, closing_time = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.closing_time(buffer, index, packet, parent)

  -- Primary Market Code: 1 Byte Ascii String Enum with 18 values
  index, primary_market_code = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.primary_market_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_update_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.symbol_update_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.symbol_update_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: System Time Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_time_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.timestamp

  return index
end

-- Display: System Time Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_time_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.system_time_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.system_time_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.data = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "49" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_time_message(buffer, offset)
  end
  -- Size of Symbol Update Message
  if message_type == "1" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.symbol_update_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "83" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.system_state_message(buffer, offset)
  end
  -- Size of Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.security_trading_status_notification_message(buffer, offset)
  end
  -- Size of Compact Top Of Market Best Bid And Offer Message
  if message_type == "2" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.compact_top_of_market_best_bid_and_offer_message(buffer, offset)
  end
  -- Size of Wide Top Of Market Best Bid And Offer Message
  if message_type == "3" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.wide_top_of_market_best_bid_and_offer_message(buffer, offset)
  end
  -- Size of Last Sale Message
  if message_type == "10" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.last_sale_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "11" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.trade_cancel_message(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_pearl_equities_topofmarket_mach_v1_1_a_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "49" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Update Message
  if message_type == "1" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.symbol_update_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "83" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.security_trading_status_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Top Of Market Best Bid And Offer Message
  if message_type == "2" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.compact_top_of_market_best_bid_and_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Best Bid And Offer Message
  if message_type == "3" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.wide_top_of_market_best_bid_and_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "10" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "11" then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.data(buffer, packet, parent)
  local element = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.data, range, display)

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.message_type = 1

-- Display: Message Type
miax_pearl_equities_topofmarket_mach_v1_1_a_display.message_type = function(value)
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
  if value == "2" then
    return "Message Type: Compact Top Of Market Best Bid And Offer Message (2)"
  end
  if value == "3" then
    return "Message Type: Wide Top Of Market Best Bid And Offer Message (3)"
  end
  if value == "10" then
    return "Message Type: Last Sale Message (10)"
  end
  if value == "11" then
    return "Message Type: Trade Cancel Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Application Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.message_type

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.data(buffer, data_offset, data_type)

  return index
end

-- Display: Application Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.application_message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.application_message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.application_message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearl_equities_topofmarket_mach_v1_1_a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.payload(buffer, packet, parent)
  local element = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.payload, range, display)

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_number = 1

-- Display: Session Number
miax_pearl_equities_topofmarket_mach_v1_1_a_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_type = 1

-- Display: Packet Type
miax_pearl_equities_topofmarket_mach_v1_1_a_display.packet_type = function(value)
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
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_length = 2

-- Display: Packet Length
miax_pearl_equities_topofmarket_mach_v1_1_a_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.sequence_number = 8

-- Display: Sequence Number
miax_pearl_equities_topofmarket_mach_v1_1_a_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.sequence_number

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_length

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.packet_type

  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_pearl_equities_topofmarket_mach_v1_1_a_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_pearl_equities_topofmarket_mach_v1_1_a_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearl_equities_topofmarket_mach_v1_1_a_display.message(buffer, packet, parent)
    parent = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a.fields.message, range, display)
  end

  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index = miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_pearl_equities_topofmarket_mach_v1_1_a.init()
end

-- Dissector for Miax Pearl Equities TopOfMarket Mach 1.1.a
function miax_pearl_equities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_pearl_equities_topofmarket_mach_v1_1_a.name

  -- Dissect protocol
  local protocol = parent:add(miax_pearl_equities_topofmarket_mach_v1_1_a, buffer(), miax_pearl_equities_topofmarket_mach_v1_1_a.description, "("..buffer:len().." Bytes)")
  return miax_pearl_equities_topofmarket_mach_v1_1_a_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_pearl_equities_topofmarket_mach_v1_1_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_pearl_equities_topofmarket_mach_v1_1_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Pearl Equities TopOfMarket Mach 1.1.a
local function miax_pearl_equities_topofmarket_mach_v1_1_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_pearl_equities_topofmarket_mach_v1_1_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_pearl_equities_topofmarket_mach_v1_1_a
  miax_pearl_equities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax Pearl Equities TopOfMarket Mach 1.1.a
miax_pearl_equities_topofmarket_mach_v1_1_a:register_heuristic("udp", miax_pearl_equities_topofmarket_mach_v1_1_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 1.1.a
--   Date: Thursday, November 5, 2020
--   Specification: MIAX_PEARL_Equities_ToM_Feed_v1.1a.pdf
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
