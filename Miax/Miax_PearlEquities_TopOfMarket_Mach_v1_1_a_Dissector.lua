-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities TopOfMarket Mach 1.1.a Protocol
local omi_miax_pearlequities_topofmarket_mach_v1_1_a = Proto("Miax.PearlEquities.TopOfMarket.Mach.v1.1.a.Lua", "Miax PearlEquities TopOfMarket Mach 1.1.a")

-- Protocol table
local miax_pearlequities_topofmarket_mach_v1_1_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities TopOfMarket Mach 1.1.a Fields
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.application_message = ProtoField.new("Application Message", "miax.pearlequities.topofmarket.mach.v1.1.a.applicationmessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_price = ProtoField.new("Bid Price", "miax.pearlequities.topofmarket.mach.v1.1.a.bidprice", ftypes.DOUBLE)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_size = ProtoField.new("Bid Size", "miax.pearlequities.topofmarket.mach.v1.1.a.bidsize", ftypes.UINT16)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.topofmarket.mach.v1.1.a.closingtime", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.topofmarket.mach.v1.1.a.correctionnumber", ftypes.UINT8)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.data = ProtoField.new("Data", "miax.pearlequities.topofmarket.mach.v1.1.a.data", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.flags = ProtoField.new("Flags", "miax.pearlequities.topofmarket.mach.v1.1.a.flags", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.topofmarket.mach.v1.1.a.lotsize", ftypes.UINT16)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.market_state = ProtoField.new("Market State", "miax.pearlequities.topofmarket.mach.v1.1.a.marketstate", ftypes.UINT8)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message = ProtoField.new("Message", "miax.pearlequities.topofmarket.mach.v1.1.a.message", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message_type = ProtoField.new("Message Type", "miax.pearlequities.topofmarket.mach.v1.1.a.messagetype", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_price = ProtoField.new("Offer Price", "miax.pearlequities.topofmarket.mach.v1.1.a.offerprice", ftypes.DOUBLE)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_size = ProtoField.new("Offer Size", "miax.pearlequities.topofmarket.mach.v1.1.a.offersize", ftypes.UINT16)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.topofmarket.mach.v1.1.a.openingtime", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet = ProtoField.new("Packet", "miax.pearlequities.topofmarket.mach.v1.1.a.packet", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearlequities.topofmarket.mach.v1.1.a.packetlength", ftypes.UINT16)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearlequities.topofmarket.mach.v1.1.a.packettype", ftypes.UINT8)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.payload = ProtoField.new("Payload", "miax.pearlequities.topofmarket.mach.v1.1.a.payload", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.price = ProtoField.new("Price", "miax.pearlequities.topofmarket.mach.v1.1.a.price", ftypes.DOUBLE)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.topofmarket.mach.v1.1.a.primarymarketcode", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.topofmarket.mach.v1.1.a.reserved1", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.topofmarket.mach.v1.1.a.sequencenumber", ftypes.UINT64)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.topofmarket.mach.v1.1.a.sessionid", ftypes.UINT8)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_number = ProtoField.new("Session Number", "miax.pearlequities.topofmarket.mach.v1.1.a.sessionnumber", ftypes.UINT8)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearlequities.topofmarket.mach.v1.1.a.shortsalerestriction", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.size = ProtoField.new("Size", "miax.pearlequities.topofmarket.mach.v1.1.a.size", ftypes.UINT32)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.topofmarket.mach.v1.1.a.symbolid", ftypes.UINT32)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.topofmarket.mach.v1.1.a.systemstatus", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.topofmarket.mach.v1.1.a.testsecurityindicator", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.topofmarket.mach.v1.1.a.tickersymbol", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.timestamp = ProtoField.new("Timestamp", "miax.pearlequities.topofmarket.mach.v1.1.a.timestamp", ftypes.UINT32)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.to_m_version = ProtoField.new("To M Version", "miax.pearlequities.topofmarket.mach.v1.1.a.tomversion", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.topofmarket.mach.v1.1.a.tradeid", ftypes.UINT64)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trading_status = ProtoField.new("Trading Status", "miax.pearlequities.topofmarket.mach.v1.1.a.tradingstatus", ftypes.UINT8)

-- Miax PearlEquities TopOfMarket Mach 1.1.a messages
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message = ProtoField.new("Compact Top Of Market Best Bid And Offer Message", "miax.pearlequities.topofmarket.mach.v1.1.a.compacttopofmarketbestbidandoffermessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearlequities.topofmarket.mach.v1.1.a.lastsalemessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearlequities.topofmarket.mach.v1.1.a.securitytradingstatusnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.topofmarket.mach.v1.1.a.symbolupdatemessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_state_message = ProtoField.new("System State Message", "miax.pearlequities.topofmarket.mach.v1.1.a.systemstatemessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearlequities.topofmarket.mach.v1.1.a.systemtimemessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearlequities.topofmarket.mach.v1.1.a.tradecancelmessage", ftypes.STRING)
omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message = ProtoField.new("Wide Top Of Market Best Bid And Offer Message", "miax.pearlequities.topofmarket.mach.v1.1.a.widetopofmarketbestbidandoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities TopOfMarket Mach 1.1.a Element Dissection Options
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

-- Register Miax PearlEquities TopOfMarket Mach 1.1.a Show Options
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message = Pref.bool("Show Compact Top Of Market Best Bid And Offer Message", show.compact_top_of_market_best_bid_and_offer_message, "Parse and add Compact Top Of Market Best Bid And Offer Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message = Pref.bool("Show Last Sale Message", show.last_sale_message, "Parse and add Last Sale Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message = Pref.bool("Show Security Trading Status Notification Message", show.security_trading_status_notification_message, "Parse and add Security Trading Status Notification Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message = Pref.bool("Show Symbol Update Message", show.symbol_update_message, "Parse and add Symbol Update Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message = Pref.bool("Show Wide Top Of Market Best Bid And Offer Message", show.wide_top_of_market_best_bid_and_offer_message, "Parse and add Wide Top Of Market Best Bid And Offer Message to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_message then
    show.application_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_application_message
    changed = true
  end
  if show.compact_top_of_market_best_bid_and_offer_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message then
    show.compact_top_of_market_best_bid_and_offer_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_compact_top_of_market_best_bid_and_offer_message
    changed = true
  end
  if show.last_sale_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message then
    show.last_sale_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_last_sale_message
    changed = true
  end
  if show.message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_message then
    show.message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_packet then
    show.packet = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_packet
    changed = true
  end
  if show.security_trading_status_notification_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message then
    show.security_trading_status_notification_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_security_trading_status_notification_message
    changed = true
  end
  if show.symbol_update_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message then
    show.symbol_update_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_symbol_update_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_state_message then
    show.system_state_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_time_message then
    show.system_time_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_system_time_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_trade_cancel_message
    changed = true
  end
  if show.wide_top_of_market_best_bid_and_offer_message ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message then
    show.wide_top_of_market_best_bid_and_offer_message = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_wide_top_of_market_best_bid_and_offer_message
    changed = true
  end
  if show.data ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_data then
    show.data = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_payload then
    show.payload = omi_miax_pearlequities_topofmarket_mach_v1_1_a.prefs.show_payload
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
-- Dissect Miax PearlEquities TopOfMarket Mach 1.1.a
-----------------------------------------------------------------------

-- Size
miax_pearlequities_topofmarket_mach_v1_1_a.size = {}

-- Size: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.size = 4

-- Display: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.size, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_topofmarket_mach_v1_1_a.price = {}

-- Size: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.size = 8

-- Display: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.price, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number = {}

-- Size: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id = {}

-- Size: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp = {}

-- Size: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size = 4

-- Display: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message = {}

-- Calculate size of: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.size.size

  return index
end

-- Display: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags = {}

-- Size: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.size = 0

-- Display: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.display = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
miax_pearlequities_topofmarket_mach_v1_1_a.flags.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.flags.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.flags, range, value, display)

  return offset + length, value
end

-- Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message = {}

-- Calculate size of: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.size.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.flags.size

  return index
end

-- Display: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_topofmarket_mach_v1_1_a.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_topofmarket_mach_v1_1_a.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_topofmarket_mach_v1_1_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_topofmarket_mach_v1_1_a.size.dissect(buffer, index, packet, parent)

  -- Flags: 0 Byte Ascii String
  index, flags = miax_pearlequities_topofmarket_mach_v1_1_a.flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.last_sale_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.last_sale_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size = {}

-- Size: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size = 2

-- Display: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price = {}

-- Size: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size = 2

-- Display: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price
miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size = {}

-- Size: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size = 2

-- Display: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price = {}

-- Size: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size = 2

-- Display: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.translate(raw)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message = {}

-- Calculate size of: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size

  return index
end

-- Display: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Bid Price: BinaryPrc2U
  index, bid_price = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: BinaryU
  index, bid_size = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: BinaryPrc2U
  index, offer_price = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: BinaryU
  index, offer_size = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.wide_top_of_market_best_bid_and_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.wide_top_of_market_best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message = {}

-- Calculate size of: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.size

  return index
end

-- Display: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Bid Price: BinaryPrc2U
  index, bid_price = miax_pearlequities_topofmarket_mach_v1_1_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: BinaryU
  index, bid_size = miax_pearlequities_topofmarket_mach_v1_1_a.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: BinaryPrc2U
  index, offer_price = miax_pearlequities_topofmarket_mach_v1_1_a.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: BinaryU
  index, offer_size = miax_pearlequities_topofmarket_mach_v1_1_a.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Top Of Market Best Bid And Offer Message
miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.compact_top_of_market_best_bid_and_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.compact_top_of_market_best_bid_and_offer_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction = {}

-- Size: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.display = function(value)
  if value == "Y" then
    return "Short Sale Restriction: Ssr In Effect (Y)"
  end
  if value == "N" then
    return "Short Sale Restriction: Ssr Not In Effect (N)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state = {}

-- Size: Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size = 1

-- Display: Market State
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.market_state, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status = {}

-- Size: Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size = 1

-- Display: Trading Status
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message = {}

-- Calculate size of: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.market_state.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.size

  return index
end

-- Display: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_pearlequities_topofmarket_mach_v1_1_a.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_pearlequities_topofmarket_mach_v1_1_a.market_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Alphanumeric
  index, short_sale_restriction = miax_pearlequities_topofmarket_mach_v1_1_a.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.security_trading_status_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.security_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status = {}

-- Size: System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size = 1

-- Display: System Status
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id = {}

-- Size: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size = 1

-- Display: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_topofmarket_mach_v1_1_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version = {}

-- Size: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size = 8

-- Display: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message = {}

-- Calculate size of: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.session_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.system_status.size

  return index
end

-- Display: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_pearlequities_topofmarket_mach_v1_1_a.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_topofmarket_mach_v1_1_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_topofmarket_mach_v1_1_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time = {}

-- Size: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time = {}

-- Size: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size = {}

-- Size: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size = 2

-- Display: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.display = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message = {}

-- Calculate size of: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.size

  return index
end

-- Display: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_topofmarket_mach_v1_1_a.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_topofmarket_mach_v1_1_a.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_topofmarket_mach_v1_1_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_topofmarket_mach_v1_1_a.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_topofmarket_mach_v1_1_a.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_topofmarket_mach_v1_1_a.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_topofmarket_mach_v1_1_a.primary_market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message = {}

-- Calculate size of: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.size

  return index
end

-- Display: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearlequities_topofmarket_mach_v1_1_a.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearlequities_topofmarket_mach_v1_1_a.data = {}

-- Calculate runtime size of: Data
miax_pearlequities_topofmarket_mach_v1_1_a.data.size = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "49" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.size(buffer, offset)
  end
  -- Size of Symbol Update Message
  if message_type == "1" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "83" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.size(buffer, offset)
  end
  -- Size of Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.size(buffer, offset)
  end
  -- Size of Compact Top Of Market Best Bid And Offer Message
  if message_type == "2" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.size(buffer, offset)
  end
  -- Size of Wide Top Of Market Best Bid And Offer Message
  if message_type == "3" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.size(buffer, offset)
  end
  -- Size of Last Sale Message
  if message_type == "10" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "11" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_pearlequities_topofmarket_mach_v1_1_a.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_pearlequities_topofmarket_mach_v1_1_a.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "49" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Update Message
  if message_type == "1" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.symbol_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "83" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Notification Message
  if message_type == "4" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.security_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Compact Top Of Market Best Bid And Offer Message
  if message_type == "2" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.compact_top_of_market_best_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Best Bid And Offer Message
  if message_type == "3" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.wide_top_of_market_best_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "10" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "11" then
    return miax_pearlequities_topofmarket_mach_v1_1_a.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_pearlequities_topofmarket_mach_v1_1_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_pearlequities_topofmarket_mach_v1_1_a.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_topofmarket_mach_v1_1_a.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.data, range, display)

  return miax_pearlequities_topofmarket_mach_v1_1_a.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type = {}

-- Size: Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.size = 1

-- Display: Message Type
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message = {}

-- Read runtime size of: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 8 values
  index, message_type = miax_pearlequities_topofmarket_mach_v1_1_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 8 branches
  index = miax_pearlequities_topofmarket_mach_v1_1_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearlequities_topofmarket_mach_v1_1_a.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.application_message, range, display)
  end

  miax_pearlequities_topofmarket_mach_v1_1_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload = {}

-- Calculate runtime size of: Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_pearlequities_topofmarket_mach_v1_1_a.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_pearlequities_topofmarket_mach_v1_1_a.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearlequities_topofmarket_mach_v1_1_a.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearlequities_topofmarket_mach_v1_1_a.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_topofmarket_mach_v1_1_a.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.payload, range, display)

  return miax_pearlequities_topofmarket_mach_v1_1_a.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number = {}

-- Size: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size = 1

-- Display: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearlequities_topofmarket_mach_v1_1_a.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.packet_type = {}

-- Size: Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.size = 1

-- Display: Packet Type
miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.display = function(value)
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
miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.packet_length = {}

-- Size: Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.size = 2

-- Display: Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_pearlequities_topofmarket_mach_v1_1_a.message = {}

-- Calculate size of: Message
miax_pearlequities_topofmarket_mach_v1_1_a.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.size

  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_pearlequities_topofmarket_mach_v1_1_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_pearlequities_topofmarket_mach_v1_1_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_pearlequities_topofmarket_mach_v1_1_a.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_topofmarket_mach_v1_1_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearlequities_topofmarket_mach_v1_1_a.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearlequities_topofmarket_mach_v1_1_a.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearlequities_topofmarket_mach_v1_1_a.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_pearlequities_topofmarket_mach_v1_1_a.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_pearlequities_topofmarket_mach_v1_1_a.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_pearlequities_topofmarket_mach_v1_1_a.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_topofmarket_mach_v1_1_a.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a.fields.message, range, display)
  end

  return miax_pearlequities_topofmarket_mach_v1_1_a.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet = {}

-- Dissect Packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_pearlequities_topofmarket_mach_v1_1_a.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.init()
end

-- Dissector for Miax PearlEquities TopOfMarket Mach 1.1.a
function omi_miax_pearlequities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_topofmarket_mach_v1_1_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_topofmarket_mach_v1_1_a, buffer(), omi_miax_pearlequities_topofmarket_mach_v1_1_a.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_topofmarket_mach_v1_1_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_pearlequities_topofmarket_mach_v1_1_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_pearlequities_topofmarket_mach_v1_1_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlEquities TopOfMarket Mach 1.1.a
local function omi_miax_pearlequities_topofmarket_mach_v1_1_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_topofmarket_mach_v1_1_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_topofmarket_mach_v1_1_a
  omi_miax_pearlequities_topofmarket_mach_v1_1_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities TopOfMarket Mach 1.1.a
omi_miax_pearlequities_topofmarket_mach_v1_1_a:register_heuristic("udp", omi_miax_pearlequities_topofmarket_mach_v1_1_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
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
