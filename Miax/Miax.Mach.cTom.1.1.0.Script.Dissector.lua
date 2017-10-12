-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Mach cTom 1.1.0 Protocol
local miax_mach_ctom_1_1_0 = Proto("Miax.Mach.cTom.1.1.0.Lua", "Miax Mach cTom 1.1.0")

-- Component Tables
local show = {}
local display = {}
local dissect = {}
local calculate = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Mach cTom 1.1.0 Element Dissection Options
show.application_message = true
show.complex_double_sided_top_of_market_compact_message = true
show.complex_strategy_definition_message = true
show.complex_top_of_market_bid_compact_message = true
show.complex_top_of_market_offer_compact_message = true
show.leg_definition = true
show.message = true
show.packet = true
show.series_update = true
show.strategy_trade_message = true
show.system_state_message = true
show.system_time_message = true
show.underlying_trading_status_message = true
show.wide_complex_double_sided_top_of_market_message = true
show.wide_complex_top_of_market_bid_message = true
show.wide_complex_top_of_market_offer_message = true
show.data = true
show.payload = true

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Mach cTom 1.1.0 Fields
miax_mach_ctom_1_1_0.fields.active_on_miax = ProtoField.new("Active On Miax", "Miax.Mach.cTom.activeonmiax", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.application_message = ProtoField.new("Application Message", "Miax.Mach.cTom.applicationmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.bid_condition = ProtoField.new("Bid Condition", "Miax.Mach.cTom.bidcondition", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.callor_put = ProtoField.new("Callor Put", "Miax.Mach.cTom.callorput", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.closing_time = ProtoField.new("Closing Time", "Miax.Mach.cTom.closingtime", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.compact_bid_price = ProtoField.new("Compact Bid Price", "Miax.Mach.cTom.compactbidprice", ftypes.INT16)
miax_mach_ctom_1_1_0.fields.compact_bid_size = ProtoField.new("Compact Bid Size", "Miax.Mach.cTom.compactbidsize", ftypes.UINT16)
miax_mach_ctom_1_1_0.fields.compact_offer_price = ProtoField.new("Compact Offer Price", "Miax.Mach.cTom.compactofferprice", ftypes.INT16)
miax_mach_ctom_1_1_0.fields.compact_offer_size = ProtoField.new("Compact Offer Size", "Miax.Mach.cTom.compactoffersize", ftypes.UINT16)
miax_mach_ctom_1_1_0.fields.compact_price = ProtoField.new("Compact Price", "Miax.Mach.cTom.compactprice", ftypes.INT16)
miax_mach_ctom_1_1_0.fields.compact_size = ProtoField.new("Compact Size", "Miax.Mach.cTom.compactsize", ftypes.UINT16)
miax_mach_ctom_1_1_0.fields.complex_double_sided_top_of_market_compact_message = ProtoField.new("Complex Double-Sided Top of Market Compact Message", "Miax.Mach.cTom.complexdoublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "Miax.Mach.cTom.complexstrategydefinitionmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.complex_top_of_market_bid_compact_message = ProtoField.new("Complex Top Of Market Bid Compact Message", "Miax.Mach.cTom.complextopofmarketbidcompactmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.complex_top_of_market_offer_compact_message = ProtoField.new("Complex Top Of Market Offer Compact Message", "Miax.Mach.cTom.complextopofmarketoffercompactmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.data = ProtoField.new("Data", "Miax.Mach.cTom.data", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.event_reason = ProtoField.new("Event Reason", "Miax.Mach.cTom.eventreason", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "Miax.Mach.cTom.expectedeventtimenanosecondspart", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.expiration_date = ProtoField.new("Expiration Date", "Miax.Mach.cTom.expirationdate", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.leg_definition = ProtoField.new("Leg Definition", "Miax.Mach.cTom.legdefinition", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "Miax.Mach.cTom.legratioqty", ftypes.UINT16)
miax_mach_ctom_1_1_0.fields.leg_side = ProtoField.new("Leg Side", "Miax.Mach.cTom.legside", ftypes.UINT8)
miax_mach_ctom_1_1_0.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "Miax.Mach.cTom.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.long_term_option = ProtoField.new("Long Term Option", "Miax.Mach.cTom.longtermoption", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.message = ProtoField.new("Message", "Miax.Mach.cTom.message", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.message_type = ProtoField.new("Message Type", "Miax.Mach.cTom.messagetype", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.miaxbbo_posting_increment_indicator = ProtoField.new("MIAXBBO Posting Increment Indicator", "Miax.Mach.cTom.miaxbbopostingincrementindicator", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.net_price = ProtoField.new("Net Price", "Miax.Mach.cTom.netprice", ftypes.INT64)
miax_mach_ctom_1_1_0.fields.notification_time = ProtoField.new("Notification Time", "Miax.Mach.cTom.notificationtime", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.numberof_legs = ProtoField.new("Numberof Legs", "Miax.Mach.cTom.numberoflegs", ftypes.UINT8)
miax_mach_ctom_1_1_0.fields.offer_condition = ProtoField.new("Offer Condition", "Miax.Mach.cTom.offercondition", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.opening_time = ProtoField.new("Opening Time", "Miax.Mach.cTom.openingtime", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "Miax.Mach.cTom.openingunderlyingmarketcode", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.packet = ProtoField.new("Packet", "Miax.Mach.cTom.packet", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.packet_length = ProtoField.new("Packet Length", "Miax.Mach.cTom.packetlength", ftypes.UINT16)
miax_mach_ctom_1_1_0.fields.packet_type = ProtoField.new("Packet Type", "Miax.Mach.cTom.packettype", ftypes.UINT8)
miax_mach_ctom_1_1_0.fields.payload = ProtoField.new("Payload", "Miax.Mach.cTom.payload", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "Miax.Mach.cTom.priorityquotewidth", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.product_add__update_time = ProtoField.new("Product Add/ Update Time", "Miax.Mach.cTom.productaddupdatetime", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.product_id = ProtoField.new("Product Id", "Miax.Mach.cTom.productid", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.product_id = ProtoField.new("Product ID", "Miax.Mach.cTom.productid", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.reserved1 = ProtoField.new("Reserved1", "Miax.Mach.cTom.reserved1", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.reserved10 = ProtoField.new("Reserved10", "Miax.Mach.cTom.reserved10", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.reserved16 = ProtoField.new("Reserved16", "Miax.Mach.cTom.reserved16", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.reserved2 = ProtoField.new("Reserved2", "Miax.Mach.cTom.reserved2", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.reserved4 = ProtoField.new("Reserved4", "Miax.Mach.cTom.reserved4", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.reserved8 = ProtoField.new("Reserved8", "Miax.Mach.cTom.reserved8", ftypes.BYTES)
miax_mach_ctom_1_1_0.fields.restricted_option = ProtoField.new("Restricted Option", "Miax.Mach.cTom.restrictedoption", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.seconds_part = ProtoField.new("Seconds Part", "Miax.Mach.cTom.secondspart", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.security_symbol = ProtoField.new("Security Symbol", "Miax.Mach.cTom.securitysymbol", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.sequence_number = ProtoField.new("Sequence Number", "Miax.Mach.cTom.sequencenumber", ftypes.UINT64)
miax_mach_ctom_1_1_0.fields.series_update = ProtoField.new("Series Update", "Miax.Mach.cTom.seriesupdate", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.session_id = ProtoField.new("Session ID", "Miax.Mach.cTom.sessionid", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.session_number = ProtoField.new("Session Number", "Miax.Mach.cTom.sessionnumber", ftypes.UINT8)
miax_mach_ctom_1_1_0.fields.strategy_add_time = ProtoField.new("Strategy Add Time", "Miax.Mach.cTom.strategyaddtime", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.strategy_id = ProtoField.new("Strategy ID", "Miax.Mach.cTom.strategyid", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "Miax.Mach.cTom.strategytrademessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.strike_price = ProtoField.new("Strike Price", "Miax.Mach.cTom.strikeprice", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.system_state_message = ProtoField.new("System State Message", "Miax.Mach.cTom.systemstatemessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.system_status = ProtoField.new("System Status", "Miax.Mach.cTom.systemstatus", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.system_time_message = ProtoField.new("System Time Message", "Miax.Mach.cTom.systemtimemessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.timestamp = ProtoField.new("Timestamp", "Miax.Mach.cTom.timestamp", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.top_of_market_quote_condition = ProtoField.new("Top Of Market Quote Condition", "Miax.Mach.cTom.topofmarketquotecondition", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.trade_condition = ProtoField.new("Trade Condition", "Miax.Mach.cTom.tradecondition", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.trade_id = ProtoField.new("Trade ID", "Miax.Mach.cTom.tradeid", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.trade_size = ProtoField.new("Trade Size", "Miax.Mach.cTom.tradesize", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.trading_status = ProtoField.new("Trading Status", "Miax.Mach.cTom.tradingstatus", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "Miax.Mach.cTom.underlyingsymbol", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "Miax.Mach.cTom.underlyingtradingstatusmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.update_reason = ProtoField.new("Update Reason", "Miax.Mach.cTom.updatereason", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.version = ProtoField.new("Version", "Miax.Mach.cTom.version", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.wide_bid_price = ProtoField.new("Wide Bid Price", "Miax.Mach.cTom.widebidprice", ftypes.INT64)
miax_mach_ctom_1_1_0.fields.wide_bid_size = ProtoField.new("Wide Bid Size", "Miax.Mach.cTom.widebidsize", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.wide_complex_double_sided_top_of_market_message = ProtoField.new("Wide Complex Double Sided Top of Market Message", "Miax.Mach.cTom.widecomplexdoublesidedtopofmarketmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.wide_complex_top_of_market_bid_message = ProtoField.new("Wide Complex Top Of Market Bid Message", "Miax.Mach.cTom.widecomplextopofmarketbidmessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.wide_complex_top_of_market_offer_message = ProtoField.new("Wide Complex Top Of Market Offer Message", "Miax.Mach.cTom.widecomplextopofmarketoffermessage", ftypes.STRING)
miax_mach_ctom_1_1_0.fields.wide_offer_price = ProtoField.new("Wide Offer Price", "Miax.Mach.cTom.wideofferprice", ftypes.INT64)
miax_mach_ctom_1_1_0.fields.wide_offer_size = ProtoField.new("Wide Offer Size", "Miax.Mach.cTom.wideoffersize", ftypes.UINT32)
miax_mach_ctom_1_1_0.fields.wide_price = ProtoField.new("Wide Price", "Miax.Mach.cTom.wideprice", ftypes.INT64)
miax_mach_ctom_1_1_0.fields.wide_size = ProtoField.new("Wide Size", "Miax.Mach.cTom.widesize", ftypes.UINT32)

-----------------------------------------------------------------------
-- Dissect Miax Mach cTom 1.1.0
-----------------------------------------------------------------------

-- Display Expected Event Time Nano Seconds Part
display.expected_event_time_nano_seconds_part = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect Expected Event Time Nano Seconds Part Field
dissect.expected_event_time_nano_seconds_part = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.expected_event_time_nano_seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + size
end

-- Display Seconds Part
display.seconds_part = function(value)
  return "Seconds Part: "..value
end

-- Dissect Seconds Part Field
dissect.seconds_part = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.seconds_part, range, value, display)

  return offset + size
end

-- Display Field: Event Reason
display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect Event Reason Field
dissect.event_reason = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.event_reason(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.event_reason, range, value, display)

  return offset + size
end

-- Display Field: Trading Status
display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "R" then
    return "Trading Status: Resumed (R)"
  end
  if value == "O" then
    return "Trading Status: Opened (O)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect Trading Status Field
dissect.trading_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.trading_status, range, value, display)

  return offset + size
end

-- Display Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect Underlying Symbol Field
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local size = 11
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.underlying_symbol, range, value, display)

  return offset + size
end

-- Display Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect Timestamp Field
dissect.timestamp = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.timestamp, range, value, display)

  return offset + size
end

-- Display function for: Underlying Trading Status Message
display.underlying_trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Underlying Trading Status Message Fields
dissect.underlying_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: 1 Byte Ascii String Enum with 2 values
  index = dissect.event_reason(buffer, index, packet, parent)

  -- Seconds Part: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seconds_part(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: 4 Byte Unsigned Fixed Width Integer
  index = dissect.expected_event_time_nano_seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Underlying Trading Status Message
dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  if not show.underlying_trading_status_message then
    return dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.underlying_trading_status_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.underlying_trading_status_message, range, display)

  return dissect.underlying_trading_status_message_fields(buffer, offset, packet, element)
end

-- Display Reserved16
display.reserved16 = function(value)
  return "Reserved16: "..value
end

-- Dissect Reserved16 Field
dissect.reserved16 = function(buffer, offset, packet, parent)
  local size = 16
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved16(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved16, range, value, display)

  return offset + size
end

-- Display Field: Trade Condition
display.trade_condition = function(value)
  if value == "S" then
    return "Trade Condition: Matched (S)"
  end
  if value == "L" then
    return "Trade Condition: Legged (L)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect Trade Condition Field
dissect.trade_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.trade_condition, range, value, display)

  return offset + size
end

-- Display Trade Size
display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect Trade Size Field
dissect.trade_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trade_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.trade_size, range, value, display)

  return offset + size
end

-- Display Net Price
display.net_price = function(value)
  return "Net Price: "..value
end

-- Dissect Net Price Field
dissect.net_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.net_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.net_price, range, value, display)

  return offset + size
end

-- Display Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect Trade ID Field
dissect.trade_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.trade_id, range, value, display)

  return offset + size
end

-- Display Strategy ID
display.strategy_id = function(value)
  return "Strategy ID: "..value
end

-- Dissect Strategy ID Field
dissect.strategy_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.strategy_id, range, value, display)

  return offset + size
end

-- Display function for: Strategy Trade Message
display.strategy_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Strategy Trade Message Fields
dissect.strategy_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Trade ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Net Price: 8 Byte Signed Fixed Width Integer
  index = dissect.net_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  -- Reserved16: 16 Byte
  index = dissect.reserved16(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Strategy Trade Message
dissect.strategy_trade_message = function(buffer, offset, packet, parent)
  if not show.strategy_trade_message then
    return dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 41)
  local display = display.strategy_trade_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.strategy_trade_message, range, display)

  return dissect.strategy_trade_message_fields(buffer, offset, packet, element)
end

-- Display Field: Offer Condition
display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Offer Condition: Wide (W)"
  end
  if value == "S" then
    return "Offer Condition: Simple Auction (S)"
  end
  if value == "C" then
    return "Offer Condition: Complex Auction (C)"
  end
  if value == "M" then
    return "Offer Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Offer Condition: Leg Market Protection (L)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect Offer Condition Field
dissect.offer_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.offer_condition, range, value, display)

  return offset + size
end

-- Display Reserved4
display.reserved4 = function(value)
  return "Reserved4: "..value
end

-- Dissect Reserved4 Field
dissect.reserved4 = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved4(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved4, range, value, display)

  return offset + size
end

-- Display Wide Offer Size
display.wide_offer_size = function(value)
  return "Wide Offer Size: "..value
end

-- Dissect Wide Offer Size Field
dissect.wide_offer_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.wide_offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_offer_size, range, value, display)

  return offset + size
end

-- Display Wide Offer Price
display.wide_offer_price = function(value)
  return "Wide Offer Price: "..value
end

-- Dissect Wide Offer Price Field
dissect.wide_offer_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.wide_offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_offer_price, range, value, display)

  return offset + size
end

-- Display Field: Bid Condition
display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Bid Condition: Wide (W)"
  end
  if value == "S" then
    return "Bid Condition: Simple Auction (S)"
  end
  if value == "C" then
    return "Bid Condition: Complex Auction (C)"
  end
  if value == "M" then
    return "Bid Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Bid Condition: Leg Market Protection (L)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect Bid Condition Field
dissect.bid_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.bid_condition, range, value, display)

  return offset + size
end

-- Display Wide Bid Size
display.wide_bid_size = function(value)
  return "Wide Bid Size: "..value
end

-- Dissect Wide Bid Size Field
dissect.wide_bid_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.wide_bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_bid_size, range, value, display)

  return offset + size
end

-- Display Wide Bid Price
display.wide_bid_price = function(value)
  return "Wide Bid Price: "..value
end

-- Dissect Wide Bid Price Field
dissect.wide_bid_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.wide_bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_bid_price, range, value, display)

  return offset + size
end

-- Display function for: Wide Complex Double Sided Top of Market Message
display.wide_complex_double_sided_top_of_market_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Complex Double Sided Top of Market Message Fields
dissect.wide_complex_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Bid Price: 8 Byte Signed Fixed Width Integer
  index = dissect.wide_bid_price(buffer, index, packet, parent)

  -- Wide Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.wide_bid_size(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Wide Offer Price: 8 Byte Signed Fixed Width Integer
  index = dissect.wide_offer_price(buffer, index, packet, parent)

  -- Wide Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.wide_offer_size(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Complex Double Sided Top of Market Message
dissect.wide_complex_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if not show.wide_complex_double_sided_top_of_market_message then
    return dissect.wide_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 42)
  local display = display.wide_complex_double_sided_top_of_market_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.wide_complex_double_sided_top_of_market_message, range, display)

  return dissect.wide_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, element)
end

-- Display Reserved2
display.reserved2 = function(value)
  return "Reserved2: "..value
end

-- Dissect Reserved2 Field
dissect.reserved2 = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved2(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved2, range, value, display)

  return offset + size
end

-- Display Compact Offer Size
display.compact_offer_size = function(value)
  return "Compact Offer Size: "..value
end

-- Dissect Compact Offer Size Field
dissect.compact_offer_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.compact_offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_offer_size, range, value, display)

  return offset + size
end

-- Display Compact Offer Price
display.compact_offer_price = function(value)
  return "Compact Offer Price: "..value
end

-- Dissect Compact Offer Price Field
dissect.compact_offer_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.compact_offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_offer_price, range, value, display)

  return offset + size
end

-- Display Compact Bid Size
display.compact_bid_size = function(value)
  return "Compact Bid Size: "..value
end

-- Dissect Compact Bid Size Field
dissect.compact_bid_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.compact_bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_bid_size, range, value, display)

  return offset + size
end

-- Display Compact Bid Price
display.compact_bid_price = function(value)
  return "Compact Bid Price: "..value
end

-- Dissect Compact Bid Price Field
dissect.compact_bid_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.compact_bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_bid_price, range, value, display)

  return offset + size
end

-- Display function for: Complex Double-Sided Top of Market Compact Message
display.complex_double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Complex Double-Sided Top of Market Compact Message Fields
dissect.complex_double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Bid Price: 2 Byte Signed Fixed Width Integer
  index = dissect.compact_bid_price(buffer, index, packet, parent)

  -- Compact Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.compact_bid_size(buffer, index, packet, parent)

  -- Reserved2: 2 Byte
  index = dissect.reserved2(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Compact Offer Price: 2 Byte Signed Fixed Width Integer
  index = dissect.compact_offer_price(buffer, index, packet, parent)

  -- Compact Offer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.compact_offer_size(buffer, index, packet, parent)

  -- Reserved2: 2 Byte
  index = dissect.reserved2(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Complex Double-Sided Top of Market Compact Message
dissect.complex_double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  if not show.complex_double_sided_top_of_market_compact_message then
    return dissect.complex_double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 22)
  local display = display.complex_double_sided_top_of_market_compact_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.complex_double_sided_top_of_market_compact_message, range, display)

  return dissect.complex_double_sided_top_of_market_compact_message_fields(buffer, offset, packet, element)
end

-- Display Field: Top Of Market Quote Condition
display.top_of_market_quote_condition = function(value)
  if value == "H" then
    return "Top Of Market Quote Condition: Halted (H)"
  end
  if value == "R" then
    return "Top Of Market Quote Condition: Resumed (R)"
  end
  if value == "O" then
    return "Top Of Market Quote Condition: Opened (O)"
  end

  return "Top Of Market Quote Condition: Unknown("..value..")"
end

-- Dissect Top Of Market Quote Condition Field
dissect.top_of_market_quote_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.top_of_market_quote_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.top_of_market_quote_condition, range, value, display)

  return offset + size
end

-- Display Wide Size
display.wide_size = function(value)
  return "Wide Size: "..value
end

-- Dissect Wide Size Field
dissect.wide_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.wide_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_size, range, value, display)

  return offset + size
end

-- Display Wide Price
display.wide_price = function(value)
  return "Wide Price: "..value
end

-- Dissect Wide Price Field
dissect.wide_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_int64()
  local display = display.wide_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.wide_price, range, value, display)

  return offset + size
end

-- Display function for: Wide Complex Top Of Market Offer Message
display.wide_complex_top_of_market_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Complex Top Of Market Offer Message Fields
dissect.wide_complex_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Price: 8 Byte Signed Fixed Width Integer
  index = dissect.wide_price(buffer, index, packet, parent)

  -- Wide Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.wide_size(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 3 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Complex Top Of Market Offer Message
dissect.wide_complex_top_of_market_offer_message = function(buffer, offset, packet, parent)
  if not show.wide_complex_top_of_market_offer_message then
    return dissect.wide_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.wide_complex_top_of_market_offer_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.wide_complex_top_of_market_offer_message, range, display)

  return dissect.wide_complex_top_of_market_offer_message_fields(buffer, offset, packet, element)
end

-- Display function for: Wide Complex Top Of Market Bid Message
display.wide_complex_top_of_market_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Complex Top Of Market Bid Message Fields
dissect.wide_complex_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Price: 8 Byte Signed Fixed Width Integer
  index = dissect.wide_price(buffer, index, packet, parent)

  -- Wide Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.wide_size(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 3 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Complex Top Of Market Bid Message
dissect.wide_complex_top_of_market_bid_message = function(buffer, offset, packet, parent)
  if not show.wide_complex_top_of_market_bid_message then
    return dissect.wide_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.wide_complex_top_of_market_bid_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.wide_complex_top_of_market_bid_message, range, display)

  return dissect.wide_complex_top_of_market_bid_message_fields(buffer, offset, packet, element)
end

-- Display Compact Size
display.compact_size = function(value)
  return "Compact Size: "..value
end

-- Dissect Compact Size Field
dissect.compact_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.compact_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_size, range, value, display)

  return offset + size
end

-- Display Compact Price
display.compact_price = function(value)
  return "Compact Price: "..value
end

-- Dissect Compact Price Field
dissect.compact_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_int()
  local display = display.compact_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.compact_price, range, value, display)

  return offset + size
end

-- Display function for: Complex Top Of Market Offer Compact Message
display.complex_top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Complex Top Of Market Offer Compact Message Fields
dissect.complex_top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Price: 2 Byte Signed Fixed Width Integer
  index = dissect.compact_price(buffer, index, packet, parent)

  -- Compact Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.compact_size(buffer, index, packet, parent)

  -- Reserved2: 2 Byte
  index = dissect.reserved2(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 3 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Complex Top Of Market Offer Compact Message
dissect.complex_top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  if not show.complex_top_of_market_offer_compact_message then
    return dissect.complex_top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.complex_top_of_market_offer_compact_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.complex_top_of_market_offer_compact_message, range, display)

  return dissect.complex_top_of_market_offer_compact_message_fields(buffer, offset, packet, element)
end

-- Display function for: Complex Top Of Market Bid Compact Message
display.complex_top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Complex Top Of Market Bid Compact Message Fields
dissect.complex_top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Price: 2 Byte Signed Fixed Width Integer
  index = dissect.compact_price(buffer, index, packet, parent)

  -- Compact Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.compact_size(buffer, index, packet, parent)

  -- Reserved2: 2 Byte
  index = dissect.reserved2(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 3 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Complex Top Of Market Bid Compact Message
dissect.complex_top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  if not show.complex_top_of_market_bid_compact_message then
    return dissect.complex_top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.complex_top_of_market_bid_compact_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.complex_top_of_market_bid_compact_message, range, display)

  return dissect.complex_top_of_market_bid_compact_message_fields(buffer, offset, packet, element)
end

-- Display Field: System Status
display.system_status = function(value)
  if value == "S" then
    return "System Status: Startof System Hours (S)"
  end
  if value == "C" then
    return "System Status: Endof Systemhours (C)"
  end
  if value == "1" then
    return "System Status: Start Test Session (1)"
  end
  if value == "2" then
    return "System Status: Endof Test Session (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect System Status Field
dissect.system_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.system_status, range, value, display)

  return offset + size
end

-- Display Session ID
display.session_id = function(value)
  return "Session ID: "..value
end

-- Dissect Session ID Field
dissect.session_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.session_id, range, value, display)

  return offset + size
end

-- Display Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect Version Field
dissect.version = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.version, range, value, display)

  return offset + size
end

-- Display Notification Time
display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect Notification Time Field
dissect.notification_time = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.notification_time, range, value, display)

  return offset + size
end

-- Display function for: System State Message
display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect System State Message Fields
dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.notification_time(buffer, index, packet, parent)

  -- Version: 8 Byte Ascii String
  index = dissect.version(buffer, index, packet, parent)

  -- Session ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index = dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  if not show.system_state_message then
    return dissect.system_state_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 17)
  local display = display.system_state_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.system_state_message, range, display)

  return dissect.system_state_message_fields(buffer, offset, packet, element)
end

-- Display Reserved8
display.reserved8 = function(value)
  return "Reserved8: "..value
end

-- Dissect Reserved8 Field
dissect.reserved8 = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved8(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved8, range, value, display)

  return offset + size
end

-- Display Field: Leg Side
display.leg_side = function(value)
  if value == B then
    return "Leg Side: Bid (B)"
  end
  if value == A then
    return "Leg Side: Ask (A)"
  end
  if value == B then
    return "Leg Side: Bid (B)"
  end
  if value == A then
    return "Leg Side: Ask (A)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect Leg Side Field
dissect.leg_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.leg_side, range, value, display)

  return offset + size
end

-- Display Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect Leg Ratio Qty Field
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.leg_ratio_qty, range, value, display)

  return offset + size
end

-- Display Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect Product Id Field
dissect.product_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.product_id, range, value, display)

  return offset + size
end

-- Display function for: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Leg Definition Fields
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Reserved8: 8 Byte
  index = dissect.reserved8(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  if not show.leg_definition then
    return dissect.leg_definition_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.leg_definition(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.leg_definition, range, display)

  return dissect.leg_definition_fields(buffer, offset, packet, element)
end

-- Display Numberof Legs
display.numberof_legs = function(value)
  return "Numberof Legs: "..value
end

-- Dissect Numberof Legs Field
dissect.numberof_legs = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.numberof_legs(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.numberof_legs, range, value, display)

  return offset + size
end

-- Display Reserved10
display.reserved10 = function(value)
  return "Reserved10: "..value
end

-- Dissect Reserved10 Field
dissect.reserved10 = function(buffer, offset, packet, parent)
  local size = 10
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved10(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved10, range, value, display)

  return offset + size
end

-- Display Field: Update Reason
display.update_reason = function(value)
  if value == "N" then
    return "Update Reason: Newstrategycreated (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect Update Reason Field
dissect.update_reason = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.update_reason(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.update_reason, range, value, display)

  return offset + size
end

-- Display Reserved1
display.reserved1 = function(value)
  return "Reserved1: "..value
end

-- Dissect Reserved1 Field
dissect.reserved1 = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved1(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.reserved1, range, value, display)

  return offset + size
end

-- Display Field: Active On Miax
display.active_on_miax = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect Active On Miax Field
dissect.active_on_miax = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.active_on_miax, range, value, display)

  return offset + size
end

-- Display Strategy Add Time
display.strategy_add_time = function(value)
  return "Strategy Add Time: "..value
end

-- Dissect Strategy Add Time Field
dissect.strategy_add_time = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.strategy_add_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.strategy_add_time, range, value, display)

  return offset + size
end

-- Display function for: Complex Strategy Definition Message
display.complex_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Complex Strategy Definition Message Fields
dissect.complex_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Add Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_add_time(buffer, index, packet, parent)

  -- Strategy ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String Enum with 2 values
  index = dissect.active_on_miax(buffer, index, packet, parent)

  -- Reserved1: 1 Byte
  index = dissect.reserved1(buffer, index, packet, parent)

  -- Update Reason: 1 Byte Ascii String Enum with 2 values
  index = dissect.update_reason(buffer, index, packet, parent)

  -- Reserved10: 10 Byte
  index = dissect.reserved10(buffer, index, packet, parent)

  -- Numberof Legs: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numberof_legs(buffer, index, packet, parent)

  -- Leg Definition: Struct of 4 fields
  index = dissect.leg_definition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Complex Strategy Definition Message
dissect.complex_strategy_definition_message = function(buffer, offset, packet, parent)
  if not show.complex_strategy_definition_message then
    return dissect.complex_strategy_definition_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 48)
  local display = display.complex_strategy_definition_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.complex_strategy_definition_message, range, display)

  return dissect.complex_strategy_definition_message_fields(buffer, offset, packet, element)
end

-- Display Priority Quote Width
display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Dissect Priority Quote Width Field
dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.priority_quote_width, range, value, display)

  return offset + size
end

-- Display Field: Opening Underlying Market Code
display.opening_underlying_market_code = function(value)
  if value == "A" then
    return "Opening Underlying Market Code: Nyse Amex (A)"
  end
  if value == "B" then
    return "Opening Underlying Market Code: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Opening Underlying Market Code: Nse (C)"
  end
  if value == "D" then
    return "Opening Underlying Market Code: Finra Adf (D)"
  end
  if value == "E" then
    return "Opening Underlying Market Code: Market Independent (E)"
  end
  if value == "I" then
    return "Opening Underlying Market Code: Ise (I)"
  end
  if value == "J" then
    return "Opening Underlying Market Code: Edga (J)"
  end
  if value == "K" then
    return "Opening Underlying Market Code: Edgx (K)"
  end
  if value == "M" then
    return "Opening Underlying Market Code: Cse (M)"
  end
  if value == "N" then
    return "Opening Underlying Market Code: Nyse Euronext (N)"
  end
  if value == "P" then
    return "Opening Underlying Market Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Opening Underlying Market Code: Nasdaq Omx Utp (Q)"
  end
  if value == "T" then
    return "Opening Underlying Market Code: Nasdaq Omx Cta (T)"
  end
  if value == "V" then
    return "Opening Underlying Market Code: Iex (V)"
  end
  if value == "X" then
    return "Opening Underlying Market Code: Nasdaq Omx Phlx (X)"
  end
  if value == "Y" then
    return "Opening Underlying Market Code: Bats Y (Y)"
  end
  if value == "Z" then
    return "Opening Underlying Market Code: Bats (Z)"
  end

  return "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect Opening Underlying Market Code Field
dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.opening_underlying_market_code, range, value, display)

  return offset + size
end

-- Display Field: Liquidity Acceptance Increment Indicator
display.liquidity_acceptance_increment_indicator = function(value)
  if value == "P" then
    return "Liquidity Acceptance Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "Liquidity Acceptance Increment Indicator: Nickel (N)"
  end
  if value == "D" then
    return "Liquidity Acceptance Increment Indicator: Dime (D)"
  end

  return "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect Liquidity Acceptance Increment Indicator Field
dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + size
end

-- Display Field: MIAXBBO Posting Increment Indicator
display.miaxbbo_posting_increment_indicator = function(value)
  if value == "P" then
    return "MIAXBBO Posting Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "MIAXBBO Posting Increment Indicator: Nickel (N)"
  end
  if value == "D" then
    return "MIAXBBO Posting Increment Indicator: Dime (D)"
  end

  return "MIAXBBO Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect MIAXBBO Posting Increment Indicator Field
dissect.miaxbbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.miaxbbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.miaxbbo_posting_increment_indicator, range, value, display)

  return offset + size
end

-- Display Field: Long Term Option
display.long_term_option = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect Long Term Option Field
dissect.long_term_option = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.long_term_option, range, value, display)

  return offset + size
end

-- Display Field: Restricted Option
display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect Restricted Option Field
dissect.restricted_option = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.restricted_option, range, value, display)

  return offset + size
end

-- Display Closing Time
display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect Closing Time Field
dissect.closing_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.closing_time, range, value, display)

  return offset + size
end

-- Display Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect Opening Time Field
dissect.opening_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.opening_time, range, value, display)

  return offset + size
end

-- Display Field: Callor Put
display.callor_put = function(value)
  if value == "C" then
    return "Callor Put: Call (C)"
  end
  if value == "P" then
    return "Callor Put: Put (P)"
  end
  if value == "C" then
    return "Callor Put: Call (C)"
  end
  if value == "P" then
    return "Callor Put: Put (P)"
  end

  return "Callor Put: Unknown("..value..")"
end

-- Dissect Callor Put Field
dissect.callor_put = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.callor_put(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.callor_put, range, value, display)

  return offset + size
end

-- Display Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect Strike Price Field
dissect.strike_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.strike_price, range, value, display)

  return offset + size
end

-- Display Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect Expiration Date Field
dissect.expiration_date = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.expiration_date, range, value, display)

  return offset + size
end

-- Display Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect Security Symbol Field
dissect.security_symbol = function(buffer, offset, packet, parent)
  local size = 6
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.security_symbol, range, value, display)

  return offset + size
end

-- Display Product ID
display.product_id = function(value)
  return "Product ID: "..value
end

-- Dissect Product ID Field
dissect.product_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.product_id, range, value, display)

  return offset + size
end

-- Display Product Add/ Update Time
display.product_add__update_time = function(value)
  return "Product Add/ Update Time: "..value
end

-- Dissect Product Add/ Update Time Field
dissect.product_add__update_time = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.product_add__update_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.product_add__update_time, range, value, display)

  return offset + size
end

-- Display function for: Series Update
display.series_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Series Update Fields
dissect.series_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add/ Update Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_add__update_time(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: 8 Byte Ascii String
  index = dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Callor Put: 1 Byte Ascii String Enum with 4 values
  index = dissect.callor_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String Enum with 4 values
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String Enum with 4 values
  index = dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String Enum with 2 values
  index = dissect.active_on_miax(buffer, index, packet, parent)

  -- MIAXBBO Posting Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.miaxbbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: 1 Byte Ascii String Enum with 17 values
  index = dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved8: 8 Byte
  index = dissect.reserved8(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Series Update
dissect.series_update = function(buffer, offset, packet, parent)
  if not show.series_update then
    return dissect.series_update_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 72)
  local display = display.series_update(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.series_update, range, display)

  return dissect.series_update_fields(buffer, offset, packet, element)
end

-- Display function for: System Time Message
display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect System Time Message Fields
dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: System Time Message
dissect.system_time_message = function(buffer, offset, packet, parent)
  if not show.system_time_message then
    return dissect.system_time_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 4)
  local display = display.system_time_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.system_time_message, range, display)

  return dissect.system_time_message_fields(buffer, offset, packet, element)
end

-- Calculate runtime size of: Data
calculate.data = function(buffer, offset, code)
  -- Size of System Time Message
  if code == "1" then
    return 4
  end
  -- Size of Series Update
  if code == "P" then
    return 72
  end
  -- Size of Complex Strategy Definition Message
  if code == "C" then
    return 48
  end
  -- Size of System State Message
  if code == "S" then
    return 17
  end
  -- Size of Complex Top Of Market Bid Compact Message
  if code == "b" then
    return 15
  end
  -- Size of Complex Top Of Market Offer Compact Message
  if code == "o" then
    return 15
  end
  -- Size of Wide Complex Top Of Market Bid Message
  if code == "e" then
    return 25
  end
  -- Size of Wide Complex Top Of Market Offer Message
  if code == "f" then
    return 25
  end
  -- Size of Complex Double-Sided Top of Market Compact Message
  if code == "m" then
    return 22
  end
  -- Size of Wide Complex Double Sided Top of Market Message
  if code == "w" then
    return 42
  end
  -- Size of Strategy Trade Message
  if code == "t" then
    return 41
  end
  -- Size of Underlying Trading Status Message
  if code == "H" then
    return 25
  end

  return 0
end

-- Display function for Branch: Data
display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.data_branches = function(code, buffer, offset, packet, parent)
  -- Dissect System Time Message
  if code == "1" then
    return dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Update
  if code == "P" then
    return dissect.series_update(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Definition Message
  if code == "C" then
    return dissect.complex_strategy_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if code == "S" then
    return dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Bid Compact Message
  if code == "b" then
    return dissect.complex_top_of_market_bid_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Offer Compact Message
  if code == "o" then
    return dissect.complex_top_of_market_offer_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Top Of Market Bid Message
  if code == "e" then
    return dissect.wide_complex_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Top Of Market Offer Message
  if code == "f" then
    return dissect.wide_complex_top_of_market_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double-Sided Top of Market Compact Message
  if code == "m" then
    return dissect.complex_double_sided_top_of_market_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Double Sided Top of Market Message
  if code == "w" then
    return dissect.wide_complex_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if code == "t" then
    return dissect.strategy_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Message
  if code == "H" then
    return dissect.underlying_trading_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
dissect.data = function(buffer, offset, packet, parent)
  -- Parse data type dependency
  local code = buffer(offset - 1, 1):string()

  if not show.data then
    return dissect.data_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = calculate.data(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.data, range, display)

  return dissect.data_branches(code, buffer, offset, packet, element)
end

-- Display Field: Message Type
display.message_type = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update (P)"
  end
  if value == "C" then
    return "Message Type: Complex Strategy Definition Message (C)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "b" then
    return "Message Type: Complex Top Of Market Bid Compact Message (b)"
  end
  if value == "o" then
    return "Message Type: Complex Top Of Market Offer Compact Message (o)"
  end
  if value == "e" then
    return "Message Type: Wide Complex Top Of Market Bid Message (e)"
  end
  if value == "f" then
    return "Message Type: Wide Complex Top Of Market Offer Message (f)"
  end
  if value == "m" then
    return "Message Type: Complex Double-Sided Top of Market Compact Message (m)"
  end
  if value == "w" then
    return "Message Type: Wide Complex Double Sided Top of Market Message (w)"
  end
  if value == "t" then
    return "Message Type: Strategy Trade Message (t)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect Message Type Field
dissect.message_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.message_type, range, value, display)

  return offset + size
end

-- Calculate runtime size: Application Message
calculate.application_message = function(buffer, offset)
  local index = 0

  index = index + 1

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + calculate.data(buffer, data_offset, data_type)

  return index
end

-- Display function for: Application Message
display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Application Message Fields
dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = dissect.data(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Application Message
dissect.application_message = function(buffer, offset, packet, parent)
  if not show.application_message then
    return dissect.application_message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.application_message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.application_message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.application_message, range, display)

  return dissect.application_message_fields(buffer, offset, packet, element)
end

-- Calculate runtime size of: Payload
calculate.payload = function(buffer, offset, code)
  -- Size of Application Message
  if code == 3 then
    return calculate.application_message(buffer, offset)
  end

  return 0
end

-- Display function for Branch: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Application Message
  if code == 3 then
    return dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse payload type dependency
  local code = buffer(offset - 2, 1):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = calculate.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect Session Number Field
dissect.session_number = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.session_number, range, value, display)

  return offset + size
end

-- Display Field: Packet Type
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

-- Dissect Packet Type Field
dissect.packet_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.packet_type, range, value, display)

  return offset + size
end

-- Display Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect Packet Length Field
dissect.packet_length = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.packet_length, range, value, display)

  return offset + size
end

-- Display Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect Sequence Number Field
dissect.sequence_number = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_ctom_1_1_0.fields.sequence_number, range, value, display)

  return offset + size
end

-- Calculate runtime size: Message
calculate.message = function(buffer, offset)
  local index = 0

  index = index + 12

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + calculate.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display function for: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Fields
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Message
dissect.message = function(buffer, offset, packet, parent)
  if not show.message then
    return dissect.message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.message(buffer, packet, parent)
  local element = parent:add(miax_mach_ctom_1_1_0.fields.message, range, display)

  return dissect.message_fields(buffer, offset, packet, element)
end

-- Dissect Packet
function dissect.packet(buffer, packet, parent)
  local index = 0

  -- Message: Struct of 5 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_mach_ctom_1_1_0.init()
end

-- Dissector for Miax Mach cTom 1.1.0
function miax_mach_ctom_1_1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_mach_ctom_1_1_0.name

  -- Dissect protocol
  local protocol = parent:add(miax_mach_ctom_1_1_0, buffer(), miax_mach_ctom_1_1_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_mach_ctom_1_1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_mach_ctom_1_1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Mach cTom 1.1.0
local function miax_mach_ctom_1_1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_mach_ctom_1_1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_mach_ctom_1_1_0
  miax_mach_ctom_1_1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Miax Mach cTom 1.1.0 Heuristic
miax_mach_ctom_1_1_0:register_heuristic("udp", miax_mach_ctom_1_1_0_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 1.1.0
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
