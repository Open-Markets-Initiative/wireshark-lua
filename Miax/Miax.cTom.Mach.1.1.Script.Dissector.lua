-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax cTom Mach 1.1 Protocol
local miax_ctom_mach_1_1 = Proto("Miax.cTom.Mach.1.1.Lua", "Miax cTom Mach 1.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax cTom Mach 1.1 Format Options
format.application_message = true
format.complex_double_sided_top_of_market_compact_message = true
format.complex_strategy_definition_message = true
format.complex_top_of_market_bid_compact_message = true
format.complex_top_of_market_offer_compact_message = true
format.leg_definition = true
format.message = true
format.packet = true
format.series_update = true
format.strategy_trade_message = true
format.system_state_message = true
format.system_time_message = true
format.underlying_trading_status_message = true
format.wide_complex_double_sided_top_of_market_message = true
format.wide_complex_top_of_market_bid_message = true
format.wide_complex_top_of_market_offer_message = true
format.data = true
format.payload = true

-- Miax cTom Mach 1.1 Element Dissection Options
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
show.data = false
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax cTom Mach 1.1 Fields
miax_ctom_mach_1_1.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.ctom.mach.1.1.activeonmiax", ftypes.STRING)
miax_ctom_mach_1_1.fields.application_message = ProtoField.new("Application Message", "miax.ctom.mach.1.1.applicationmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.bid_condition = ProtoField.new("Bid Condition", "miax.ctom.mach.1.1.bidcondition", ftypes.STRING)
miax_ctom_mach_1_1.fields.callor_put = ProtoField.new("Callor Put", "miax.ctom.mach.1.1.callorput", ftypes.STRING)
miax_ctom_mach_1_1.fields.closing_time = ProtoField.new("Closing Time", "miax.ctom.mach.1.1.closingtime", ftypes.STRING)
miax_ctom_mach_1_1.fields.compact_bid_price = ProtoField.new("Compact Bid Price", "miax.ctom.mach.1.1.compactbidprice", ftypes.INT16)
miax_ctom_mach_1_1.fields.compact_bid_size = ProtoField.new("Compact Bid Size", "miax.ctom.mach.1.1.compactbidsize", ftypes.UINT16)
miax_ctom_mach_1_1.fields.compact_offer_price = ProtoField.new("Compact Offer Price", "miax.ctom.mach.1.1.compactofferprice", ftypes.INT16)
miax_ctom_mach_1_1.fields.compact_offer_size = ProtoField.new("Compact Offer Size", "miax.ctom.mach.1.1.compactoffersize", ftypes.UINT16)
miax_ctom_mach_1_1.fields.compact_price = ProtoField.new("Compact Price", "miax.ctom.mach.1.1.compactprice", ftypes.INT16)
miax_ctom_mach_1_1.fields.compact_size = ProtoField.new("Compact Size", "miax.ctom.mach.1.1.compactsize", ftypes.UINT16)
miax_ctom_mach_1_1.fields.complex_double_sided_top_of_market_compact_message = ProtoField.new("Complex Double-Sided Top of Market Compact Message", "miax.ctom.mach.1.1.complexdoublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "miax.ctom.mach.1.1.complexstrategydefinitionmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.complex_top_of_market_bid_compact_message = ProtoField.new("Complex Top Of Market Bid Compact Message", "miax.ctom.mach.1.1.complextopofmarketbidcompactmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.complex_top_of_market_offer_compact_message = ProtoField.new("Complex Top Of Market Offer Compact Message", "miax.ctom.mach.1.1.complextopofmarketoffercompactmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.data = ProtoField.new("Data", "miax.ctom.mach.1.1.data", ftypes.STRING)
miax_ctom_mach_1_1.fields.event_reason = ProtoField.new("Event Reason", "miax.ctom.mach.1.1.eventreason", ftypes.STRING)
miax_ctom_mach_1_1.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.ctom.mach.1.1.expectedeventtimenanosecondspart", ftypes.UINT32)
miax_ctom_mach_1_1.fields.expiration_date = ProtoField.new("Expiration Date", "miax.ctom.mach.1.1.expirationdate", ftypes.STRING)
miax_ctom_mach_1_1.fields.leg_definition = ProtoField.new("Leg Definition", "miax.ctom.mach.1.1.legdefinition", ftypes.STRING)
miax_ctom_mach_1_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.ctom.mach.1.1.legratioqty", ftypes.UINT16)
miax_ctom_mach_1_1.fields.leg_side = ProtoField.new("Leg Side", "miax.ctom.mach.1.1.legside", ftypes.UINT8)
miax_ctom_mach_1_1.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.ctom.mach.1.1.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_ctom_mach_1_1.fields.long_term_option = ProtoField.new("Long Term Option", "miax.ctom.mach.1.1.longtermoption", ftypes.STRING)
miax_ctom_mach_1_1.fields.message = ProtoField.new("Message", "miax.ctom.mach.1.1.message", ftypes.STRING)
miax_ctom_mach_1_1.fields.message_type = ProtoField.new("Message Type", "miax.ctom.mach.1.1.messagetype", ftypes.STRING)
miax_ctom_mach_1_1.fields.miaxbbo_posting_increment_indicator = ProtoField.new("MIAXBBO Posting Increment Indicator", "miax.ctom.mach.1.1.miaxbbopostingincrementindicator", ftypes.STRING)
miax_ctom_mach_1_1.fields.net_price = ProtoField.new("Net Price", "miax.ctom.mach.1.1.netprice", ftypes.INT64)
miax_ctom_mach_1_1.fields.notification_time = ProtoField.new("Notification Time", "miax.ctom.mach.1.1.notificationtime", ftypes.UINT32)
miax_ctom_mach_1_1.fields.numberof_legs = ProtoField.new("Numberof Legs", "miax.ctom.mach.1.1.numberoflegs", ftypes.UINT8)
miax_ctom_mach_1_1.fields.offer_condition = ProtoField.new("Offer Condition", "miax.ctom.mach.1.1.offercondition", ftypes.STRING)
miax_ctom_mach_1_1.fields.opening_time = ProtoField.new("Opening Time", "miax.ctom.mach.1.1.openingtime", ftypes.STRING)
miax_ctom_mach_1_1.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.ctom.mach.1.1.openingunderlyingmarketcode", ftypes.STRING)
miax_ctom_mach_1_1.fields.packet = ProtoField.new("Packet", "miax.ctom.mach.1.1.packet", ftypes.STRING)
miax_ctom_mach_1_1.fields.packet_length = ProtoField.new("Packet Length", "miax.ctom.mach.1.1.packetlength", ftypes.UINT16)
miax_ctom_mach_1_1.fields.packet_type = ProtoField.new("Packet Type", "miax.ctom.mach.1.1.packettype", ftypes.UINT8)
miax_ctom_mach_1_1.fields.payload = ProtoField.new("Payload", "miax.ctom.mach.1.1.payload", ftypes.STRING)
miax_ctom_mach_1_1.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.ctom.mach.1.1.priorityquotewidth", ftypes.UINT32)
miax_ctom_mach_1_1.fields.product_add__update_time = ProtoField.new("Product Add/ Update Time", "miax.ctom.mach.1.1.productaddupdatetime", ftypes.UINT32)
miax_ctom_mach_1_1.fields.product_id = ProtoField.new("Product Id", "miax.ctom.mach.1.1.productid", ftypes.UINT32)
miax_ctom_mach_1_1.fields.product_id = ProtoField.new("Product ID", "miax.ctom.mach.1.1.productid", ftypes.UINT32)
miax_ctom_mach_1_1.fields.reserved1 = ProtoField.new("Reserved1", "miax.ctom.mach.1.1.reserved1", ftypes.BYTES)
miax_ctom_mach_1_1.fields.reserved10 = ProtoField.new("Reserved10", "miax.ctom.mach.1.1.reserved10", ftypes.BYTES)
miax_ctom_mach_1_1.fields.reserved16 = ProtoField.new("Reserved16", "miax.ctom.mach.1.1.reserved16", ftypes.BYTES)
miax_ctom_mach_1_1.fields.reserved2 = ProtoField.new("Reserved2", "miax.ctom.mach.1.1.reserved2", ftypes.BYTES)
miax_ctom_mach_1_1.fields.reserved4 = ProtoField.new("Reserved4", "miax.ctom.mach.1.1.reserved4", ftypes.BYTES)
miax_ctom_mach_1_1.fields.reserved8 = ProtoField.new("Reserved8", "miax.ctom.mach.1.1.reserved8", ftypes.BYTES)
miax_ctom_mach_1_1.fields.restricted_option = ProtoField.new("Restricted Option", "miax.ctom.mach.1.1.restrictedoption", ftypes.STRING)
miax_ctom_mach_1_1.fields.seconds_part = ProtoField.new("Seconds Part", "miax.ctom.mach.1.1.secondspart", ftypes.UINT32)
miax_ctom_mach_1_1.fields.security_symbol = ProtoField.new("Security Symbol", "miax.ctom.mach.1.1.securitysymbol", ftypes.STRING)
miax_ctom_mach_1_1.fields.sequence_number = ProtoField.new("Sequence Number", "miax.ctom.mach.1.1.sequencenumber", ftypes.UINT64)
miax_ctom_mach_1_1.fields.series_update = ProtoField.new("Series Update", "miax.ctom.mach.1.1.seriesupdate", ftypes.STRING)
miax_ctom_mach_1_1.fields.session_id = ProtoField.new("Session ID", "miax.ctom.mach.1.1.sessionid", ftypes.UINT32)
miax_ctom_mach_1_1.fields.session_number = ProtoField.new("Session Number", "miax.ctom.mach.1.1.sessionnumber", ftypes.UINT8)
miax_ctom_mach_1_1.fields.strategy_add_time = ProtoField.new("Strategy Add Time", "miax.ctom.mach.1.1.strategyaddtime", ftypes.UINT32)
miax_ctom_mach_1_1.fields.strategy_id = ProtoField.new("Strategy ID", "miax.ctom.mach.1.1.strategyid", ftypes.UINT32)
miax_ctom_mach_1_1.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "miax.ctom.mach.1.1.strategytrademessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.strike_price = ProtoField.new("Strike Price", "miax.ctom.mach.1.1.strikeprice", ftypes.UINT32)
miax_ctom_mach_1_1.fields.system_state_message = ProtoField.new("System State Message", "miax.ctom.mach.1.1.systemstatemessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.system_status = ProtoField.new("System Status", "miax.ctom.mach.1.1.systemstatus", ftypes.STRING)
miax_ctom_mach_1_1.fields.system_time_message = ProtoField.new("System Time Message", "miax.ctom.mach.1.1.systemtimemessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.timestamp = ProtoField.new("Timestamp", "miax.ctom.mach.1.1.timestamp", ftypes.UINT32)
miax_ctom_mach_1_1.fields.top_of_market_quote_condition = ProtoField.new("Top Of Market Quote Condition", "miax.ctom.mach.1.1.topofmarketquotecondition", ftypes.STRING)
miax_ctom_mach_1_1.fields.trade_condition = ProtoField.new("Trade Condition", "miax.ctom.mach.1.1.tradecondition", ftypes.STRING)
miax_ctom_mach_1_1.fields.trade_id = ProtoField.new("Trade ID", "miax.ctom.mach.1.1.tradeid", ftypes.UINT32)
miax_ctom_mach_1_1.fields.trade_size = ProtoField.new("Trade Size", "miax.ctom.mach.1.1.tradesize", ftypes.UINT32)
miax_ctom_mach_1_1.fields.trading_status = ProtoField.new("Trading Status", "miax.ctom.mach.1.1.tradingstatus", ftypes.STRING)
miax_ctom_mach_1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.ctom.mach.1.1.underlyingsymbol", ftypes.STRING)
miax_ctom_mach_1_1.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "miax.ctom.mach.1.1.underlyingtradingstatusmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.update_reason = ProtoField.new("Update Reason", "miax.ctom.mach.1.1.updatereason", ftypes.STRING)
miax_ctom_mach_1_1.fields.version = ProtoField.new("Version", "miax.ctom.mach.1.1.version", ftypes.STRING)
miax_ctom_mach_1_1.fields.wide_bid_price = ProtoField.new("Wide Bid Price", "miax.ctom.mach.1.1.widebidprice", ftypes.INT64)
miax_ctom_mach_1_1.fields.wide_bid_size = ProtoField.new("Wide Bid Size", "miax.ctom.mach.1.1.widebidsize", ftypes.UINT32)
miax_ctom_mach_1_1.fields.wide_complex_double_sided_top_of_market_message = ProtoField.new("Wide Complex Double Sided Top of Market Message", "miax.ctom.mach.1.1.widecomplexdoublesidedtopofmarketmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.wide_complex_top_of_market_bid_message = ProtoField.new("Wide Complex Top Of Market Bid Message", "miax.ctom.mach.1.1.widecomplextopofmarketbidmessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.wide_complex_top_of_market_offer_message = ProtoField.new("Wide Complex Top Of Market Offer Message", "miax.ctom.mach.1.1.widecomplextopofmarketoffermessage", ftypes.STRING)
miax_ctom_mach_1_1.fields.wide_offer_price = ProtoField.new("Wide Offer Price", "miax.ctom.mach.1.1.wideofferprice", ftypes.INT64)
miax_ctom_mach_1_1.fields.wide_offer_size = ProtoField.new("Wide Offer Size", "miax.ctom.mach.1.1.wideoffersize", ftypes.UINT32)
miax_ctom_mach_1_1.fields.wide_price = ProtoField.new("Wide Price", "miax.ctom.mach.1.1.wideprice", ftypes.INT64)
miax_ctom_mach_1_1.fields.wide_size = ProtoField.new("Wide Size", "miax.ctom.mach.1.1.widesize", ftypes.UINT32)

-----------------------------------------------------------------------
-- Dissect Miax cTom Mach 1.1
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds Part
size_of.expected_event_time_nano_seconds_part = 4

-- Display: Expected Event Time Nano Seconds Part
display.expected_event_time_nano_seconds_part = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
dissect.expected_event_time_nano_seconds_part = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expected_event_time_nano_seconds_part)
  local value = range:le_uint()
  local display = display.expected_event_time_nano_seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + size_of.expected_event_time_nano_seconds_part
end

-- Size: Seconds Part
size_of.seconds_part = 4

-- Display: Seconds Part
display.seconds_part = function(value)
  return "Seconds Part: "..value
end

-- Dissect: Seconds Part
dissect.seconds_part = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seconds_part)
  local value = range:le_uint()
  local display = display.seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.seconds_part, range, value, display)

  return offset + size_of.seconds_part
end

-- Size: Event Reason
size_of.event_reason = 1

-- Display: Event Reason
display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
dissect.event_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_reason)
  local value = range:string()
  local display = display.event_reason(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.event_reason, range, value, display)

  return offset + size_of.event_reason
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
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

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_status)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.trading_status, range, value, display)

  return offset + size_of.trading_status
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 11

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Underlying Trading Status Message
display.underlying_trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Trading Status Message
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

-- Dissect: Underlying Trading Status Message
dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_trading_status_message then
    local range = buffer(offset, 25)
    local display = display.underlying_trading_status_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.underlying_trading_status_message, range, display)
  end

  return dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved16
size_of.reserved16 = 16

-- Display: Reserved16
display.reserved16 = function(value)
  return "Reserved16: "..value
end

-- Dissect: Reserved16
dissect.reserved16 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved16)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved16(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved16, range, value, display)

  return offset + size_of.reserved16
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "S" then
    return "Trade Condition: Matched (S)"
  end
  if value == "L" then
    return "Trade Condition: Legged (L)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.trade_condition, range, value, display)

  return offset + size_of.trade_condition
end

-- Size: Trade Size
size_of.trade_size = 4

-- Display: Trade Size
display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
dissect.trade_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_size)
  local value = range:le_uint()
  local display = display.trade_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.trade_size, range, value, display)

  return offset + size_of.trade_size
end

-- Size: Net Price
size_of.net_price = 8

-- Display: Net Price
display.net_price = function(value)
  return "Net Price: "..value
end

-- Dissect: Net Price
dissect.net_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.net_price)
  local value = range:le_int64()
  local display = display.net_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.net_price, range, value, display)

  return offset + size_of.net_price
end

-- Size: Trade ID
size_of.trade_id = 4

-- Display: Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect: Trade ID
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Strategy ID
size_of.strategy_id = 4

-- Display: Strategy ID
display.strategy_id = function(value)
  return "Strategy ID: "..value
end

-- Dissect: Strategy ID
dissect.strategy_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_id)
  local value = range:le_uint()
  local display = display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.strategy_id, range, value, display)

  return offset + size_of.strategy_id
end

-- Display: Strategy Trade Message
display.strategy_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Trade Message
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

-- Dissect: Strategy Trade Message
dissect.strategy_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_trade_message then
    local range = buffer(offset, 41)
    local display = display.strategy_trade_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.strategy_trade_message, range, display)
  end

  return dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Condition
size_of.offer_condition = 1

-- Display: Offer Condition
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

-- Dissect: Offer Condition
dissect.offer_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_condition)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.offer_condition, range, value, display)

  return offset + size_of.offer_condition
end

-- Size: Reserved4
size_of.reserved4 = 4

-- Display: Reserved4
display.reserved4 = function(value)
  return "Reserved4: "..value
end

-- Dissect: Reserved4
dissect.reserved4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved4)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved4(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved4, range, value, display)

  return offset + size_of.reserved4
end

-- Size: Wide Offer Size
size_of.wide_offer_size = 4

-- Display: Wide Offer Size
display.wide_offer_size = function(value)
  return "Wide Offer Size: "..value
end

-- Dissect: Wide Offer Size
dissect.wide_offer_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_offer_size)
  local value = range:le_uint()
  local display = display.wide_offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_offer_size, range, value, display)

  return offset + size_of.wide_offer_size
end

-- Size: Wide Offer Price
size_of.wide_offer_price = 8

-- Display: Wide Offer Price
display.wide_offer_price = function(value)
  return "Wide Offer Price: "..value
end

-- Dissect: Wide Offer Price
dissect.wide_offer_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_offer_price)
  local value = range:le_int64()
  local display = display.wide_offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_offer_price, range, value, display)

  return offset + size_of.wide_offer_price
end

-- Size: Bid Condition
size_of.bid_condition = 1

-- Display: Bid Condition
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

-- Dissect: Bid Condition
dissect.bid_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_condition)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.bid_condition, range, value, display)

  return offset + size_of.bid_condition
end

-- Size: Wide Bid Size
size_of.wide_bid_size = 4

-- Display: Wide Bid Size
display.wide_bid_size = function(value)
  return "Wide Bid Size: "..value
end

-- Dissect: Wide Bid Size
dissect.wide_bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_bid_size)
  local value = range:le_uint()
  local display = display.wide_bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_bid_size, range, value, display)

  return offset + size_of.wide_bid_size
end

-- Size: Wide Bid Price
size_of.wide_bid_price = 8

-- Display: Wide Bid Price
display.wide_bid_price = function(value)
  return "Wide Bid Price: "..value
end

-- Dissect: Wide Bid Price
dissect.wide_bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_bid_price)
  local value = range:le_int64()
  local display = display.wide_bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_bid_price, range, value, display)

  return offset + size_of.wide_bid_price
end

-- Display: Wide Complex Double Sided Top of Market Message
display.wide_complex_double_sided_top_of_market_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Complex Double Sided Top of Market Message
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

-- Dissect: Wide Complex Double Sided Top of Market Message
dissect.wide_complex_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_complex_double_sided_top_of_market_message then
    local range = buffer(offset, 42)
    local display = display.wide_complex_double_sided_top_of_market_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.wide_complex_double_sided_top_of_market_message, range, display)
  end

  return dissect.wide_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved2
size_of.reserved2 = 2

-- Display: Reserved2
display.reserved2 = function(value)
  return "Reserved2: "..value
end

-- Dissect: Reserved2
dissect.reserved2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved2)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved2(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved2, range, value, display)

  return offset + size_of.reserved2
end

-- Size: Compact Offer Size
size_of.compact_offer_size = 2

-- Display: Compact Offer Size
display.compact_offer_size = function(value)
  return "Compact Offer Size: "..value
end

-- Dissect: Compact Offer Size
dissect.compact_offer_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_offer_size)
  local value = range:le_uint()
  local display = display.compact_offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_offer_size, range, value, display)

  return offset + size_of.compact_offer_size
end

-- Size: Compact Offer Price
size_of.compact_offer_price = 2

-- Display: Compact Offer Price
display.compact_offer_price = function(value)
  return "Compact Offer Price: "..value
end

-- Dissect: Compact Offer Price
dissect.compact_offer_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_offer_price)
  local value = range:le_int()
  local display = display.compact_offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_offer_price, range, value, display)

  return offset + size_of.compact_offer_price
end

-- Size: Compact Bid Size
size_of.compact_bid_size = 2

-- Display: Compact Bid Size
display.compact_bid_size = function(value)
  return "Compact Bid Size: "..value
end

-- Dissect: Compact Bid Size
dissect.compact_bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_bid_size)
  local value = range:le_uint()
  local display = display.compact_bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_bid_size, range, value, display)

  return offset + size_of.compact_bid_size
end

-- Size: Compact Bid Price
size_of.compact_bid_price = 2

-- Display: Compact Bid Price
display.compact_bid_price = function(value)
  return "Compact Bid Price: "..value
end

-- Dissect: Compact Bid Price
dissect.compact_bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_bid_price)
  local value = range:le_int()
  local display = display.compact_bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_bid_price, range, value, display)

  return offset + size_of.compact_bid_price
end

-- Display: Complex Double-Sided Top of Market Compact Message
display.complex_double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Double-Sided Top of Market Compact Message
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

-- Dissect: Complex Double-Sided Top of Market Compact Message
dissect.complex_double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_double_sided_top_of_market_compact_message then
    local range = buffer(offset, 22)
    local display = display.complex_double_sided_top_of_market_compact_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.complex_double_sided_top_of_market_compact_message, range, display)
  end

  return dissect.complex_double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: Top Of Market Quote Condition
size_of.top_of_market_quote_condition = 1

-- Display: Top Of Market Quote Condition
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

-- Dissect: Top Of Market Quote Condition
dissect.top_of_market_quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.top_of_market_quote_condition)
  local value = range:string()
  local display = display.top_of_market_quote_condition(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.top_of_market_quote_condition, range, value, display)

  return offset + size_of.top_of_market_quote_condition
end

-- Size: Wide Size
size_of.wide_size = 4

-- Display: Wide Size
display.wide_size = function(value)
  return "Wide Size: "..value
end

-- Dissect: Wide Size
dissect.wide_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_size)
  local value = range:le_uint()
  local display = display.wide_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_size, range, value, display)

  return offset + size_of.wide_size
end

-- Size: Wide Price
size_of.wide_price = 8

-- Display: Wide Price
display.wide_price = function(value)
  return "Wide Price: "..value
end

-- Dissect: Wide Price
dissect.wide_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.wide_price)
  local value = range:le_int64()
  local display = display.wide_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.wide_price, range, value, display)

  return offset + size_of.wide_price
end

-- Display: Wide Complex Top Of Market Offer Message
display.wide_complex_top_of_market_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Complex Top Of Market Offer Message
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

-- Dissect: Wide Complex Top Of Market Offer Message
dissect.wide_complex_top_of_market_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_complex_top_of_market_offer_message then
    local range = buffer(offset, 25)
    local display = display.wide_complex_top_of_market_offer_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.wide_complex_top_of_market_offer_message, range, display)
  end

  return dissect.wide_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
end

-- Display: Wide Complex Top Of Market Bid Message
display.wide_complex_top_of_market_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Complex Top Of Market Bid Message
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

-- Dissect: Wide Complex Top Of Market Bid Message
dissect.wide_complex_top_of_market_bid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_complex_top_of_market_bid_message then
    local range = buffer(offset, 25)
    local display = display.wide_complex_top_of_market_bid_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.wide_complex_top_of_market_bid_message, range, display)
  end

  return dissect.wide_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
end

-- Size: Compact Size
size_of.compact_size = 2

-- Display: Compact Size
display.compact_size = function(value)
  return "Compact Size: "..value
end

-- Dissect: Compact Size
dissect.compact_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_size)
  local value = range:le_uint()
  local display = display.compact_size(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_size, range, value, display)

  return offset + size_of.compact_size
end

-- Size: Compact Price
size_of.compact_price = 2

-- Display: Compact Price
display.compact_price = function(value)
  return "Compact Price: "..value
end

-- Dissect: Compact Price
dissect.compact_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.compact_price)
  local value = range:le_int()
  local display = display.compact_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.compact_price, range, value, display)

  return offset + size_of.compact_price
end

-- Display: Complex Top Of Market Offer Compact Message
display.complex_top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Offer Compact Message
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

-- Dissect: Complex Top Of Market Offer Compact Message
dissect.complex_top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_offer_compact_message then
    local range = buffer(offset, 15)
    local display = display.complex_top_of_market_offer_compact_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.complex_top_of_market_offer_compact_message, range, display)
  end

  return dissect.complex_top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Top Of Market Bid Compact Message
display.complex_top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Bid Compact Message
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

-- Dissect: Complex Top Of Market Bid Compact Message
dissect.complex_top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_bid_compact_message then
    local range = buffer(offset, 15)
    local display = display.complex_top_of_market_bid_compact_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.complex_top_of_market_bid_compact_message, range, display)
  end

  return dissect.complex_top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
size_of.system_status = 1

-- Display: System Status
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

-- Dissect: System Status
dissect.system_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_status)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.system_status, range, value, display)

  return offset + size_of.system_status
end

-- Size: Session ID
size_of.session_id = 4

-- Display: Session ID
display.session_id = function(value)
  return "Session ID: "..value
end

-- Dissect: Session ID
dissect.session_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_id)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.session_id, range, value, display)

  return offset + size_of.session_id
end

-- Size: Version
size_of.version = 8

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.version)
  local value = range:string()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.version, range, value, display)

  return offset + size_of.version
end

-- Size: Notification Time
size_of.notification_time = 4

-- Display: Notification Time
display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
dissect.notification_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.notification_time)
  local value = range:le_uint()
  local display = display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.notification_time, range, value, display)

  return offset + size_of.notification_time
end

-- Display: System State Message
display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
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

-- Dissect: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local range = buffer(offset, 17)
    local display = display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.system_state_message, range, display)
  end

  return dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved8
size_of.reserved8 = 8

-- Display: Reserved8
display.reserved8 = function(value)
  return "Reserved8: "..value
end

-- Dissect: Reserved8
dissect.reserved8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved8)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved8(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved8, range, value, display)

  return offset + size_of.reserved8
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == B then
    return "Leg Side: Bid (B)"
  end
  if value == A then
    return "Leg Side: Ask (A)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_side)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.leg_side, range, value, display)

  return offset + size_of.leg_side
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 2

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
end

-- Size: Product Id
size_of.product_id = 4

-- Display: Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
dissect.product_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_id)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Display: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Definition
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Reserved8: 8 Byte
  index = dissect.reserved8(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_definition then
    local range = buffer(offset, 15)
    local display = display.leg_definition(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.leg_definition, range, display)
  end

  return dissect.leg_definition_fields(buffer, offset, packet, parent)
end

-- Size: Numberof Legs
size_of.numberof_legs = 1

-- Display: Numberof Legs
display.numberof_legs = function(value)
  return "Numberof Legs: "..value
end

-- Dissect: Numberof Legs
dissect.numberof_legs = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.numberof_legs)
  local value = range:le_uint()
  local display = display.numberof_legs(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.numberof_legs, range, value, display)

  return offset + size_of.numberof_legs
end

-- Size: Reserved10
size_of.reserved10 = 10

-- Display: Reserved10
display.reserved10 = function(value)
  return "Reserved10: "..value
end

-- Dissect: Reserved10
dissect.reserved10 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved10)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved10(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved10, range, value, display)

  return offset + size_of.reserved10
end

-- Size: Update Reason
size_of.update_reason = 1

-- Display: Update Reason
display.update_reason = function(value)
  if value == "N" then
    return "Update Reason: Newstrategycreated (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
dissect.update_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.update_reason)
  local value = range:string()
  local display = display.update_reason(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.update_reason, range, value, display)

  return offset + size_of.update_reason
end

-- Size: Reserved1
size_of.reserved1 = 1

-- Display: Reserved1
display.reserved1 = function(value)
  return "Reserved1: "..value
end

-- Dissect: Reserved1
dissect.reserved1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved1(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.reserved1, range, value, display)

  return offset + size_of.reserved1
end

-- Size: Active On Miax
size_of.active_on_miax = 1

-- Display: Active On Miax
display.active_on_miax = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
dissect.active_on_miax = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.active_on_miax)
  local value = range:string()
  local display = display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.active_on_miax, range, value, display)

  return offset + size_of.active_on_miax
end

-- Size: Strategy Add Time
size_of.strategy_add_time = 4

-- Display: Strategy Add Time
display.strategy_add_time = function(value)
  return "Strategy Add Time: "..value
end

-- Dissect: Strategy Add Time
dissect.strategy_add_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_add_time)
  local value = range:le_uint()
  local display = display.strategy_add_time(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.strategy_add_time, range, value, display)

  return offset + size_of.strategy_add_time
end

-- Display: Complex Strategy Definition Message
display.complex_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Message
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

-- Dissect: Complex Strategy Definition Message
dissect.complex_strategy_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_strategy_definition_message then
    local range = buffer(offset, 48)
    local display = display.complex_strategy_definition_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.complex_strategy_definition_message, range, display)
  end

  return dissect.complex_strategy_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Priority Quote Width
size_of.priority_quote_width = 4

-- Display: Priority Quote Width
display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Dissect: Priority Quote Width
dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.priority_quote_width)
  local value = range:le_uint()
  local display = display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.priority_quote_width, range, value, display)

  return offset + size_of.priority_quote_width
end

-- Size: Opening Underlying Market Code
size_of.opening_underlying_market_code = 1

-- Display: Opening Underlying Market Code
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

-- Dissect: Opening Underlying Market Code
dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_underlying_market_code)
  local value = range:string()
  local display = display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.opening_underlying_market_code, range, value, display)

  return offset + size_of.opening_underlying_market_code
end

-- Size: Liquidity Acceptance Increment Indicator
size_of.liquidity_acceptance_increment_indicator = 1

-- Display: Liquidity Acceptance Increment Indicator
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

-- Dissect: Liquidity Acceptance Increment Indicator
dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.liquidity_acceptance_increment_indicator)
  local value = range:string()
  local display = display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + size_of.liquidity_acceptance_increment_indicator
end

-- Size: MIAXBBO Posting Increment Indicator
size_of.miaxbbo_posting_increment_indicator = 1

-- Display: MIAXBBO Posting Increment Indicator
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

-- Dissect: MIAXBBO Posting Increment Indicator
dissect.miaxbbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.miaxbbo_posting_increment_indicator)
  local value = range:string()
  local display = display.miaxbbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.miaxbbo_posting_increment_indicator, range, value, display)

  return offset + size_of.miaxbbo_posting_increment_indicator
end

-- Size: Long Term Option
size_of.long_term_option = 1

-- Display: Long Term Option
display.long_term_option = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
dissect.long_term_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.long_term_option)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.long_term_option, range, value, display)

  return offset + size_of.long_term_option
end

-- Size: Restricted Option
size_of.restricted_option = 1

-- Display: Restricted Option
display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
dissect.restricted_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.restricted_option)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.restricted_option, range, value, display)

  return offset + size_of.restricted_option
end

-- Size: Closing Time
size_of.closing_time = 8

-- Display: Closing Time
display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
dissect.closing_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.closing_time)
  local value = range:string()
  local display = display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.closing_time, range, value, display)

  return offset + size_of.closing_time
end

-- Size: Opening Time
size_of.opening_time = 8

-- Display: Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
dissect.opening_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_time)
  local value = range:string()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.opening_time, range, value, display)

  return offset + size_of.opening_time
end

-- Size: Callor Put
size_of.callor_put = 1

-- Display: Callor Put
display.callor_put = function(value)
  if value == "C" then
    return "Callor Put: Call (C)"
  end
  if value == "P" then
    return "Callor Put: Put (P)"
  end

  return "Callor Put: Unknown("..value..")"
end

-- Dissect: Callor Put
dissect.callor_put = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.callor_put)
  local value = range:string()
  local display = display.callor_put(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.callor_put, range, value, display)

  return offset + size_of.callor_put
end

-- Size: Strike Price
size_of.strike_price = 4

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price)
  local value = range:le_uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.strike_price, range, value, display)

  return offset + size_of.strike_price
end

-- Size: Expiration Date
size_of.expiration_date = 8

-- Display: Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_date)
  local value = range:string()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.expiration_date, range, value, display)

  return offset + size_of.expiration_date
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Size: Product ID
size_of.product_id = 4

-- Display: Product ID
display.product_id = function(value)
  return "Product ID: "..value
end

-- Dissect: Product ID
dissect.product_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_id)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Size: Product Add/ Update Time
size_of.product_add__update_time = 4

-- Display: Product Add/ Update Time
display.product_add__update_time = function(value)
  return "Product Add/ Update Time: "..value
end

-- Dissect: Product Add/ Update Time
dissect.product_add__update_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_add__update_time)
  local value = range:le_uint()
  local display = display.product_add__update_time(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.product_add__update_time, range, value, display)

  return offset + size_of.product_add__update_time
end

-- Display: Series Update
display.series_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Series Update
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

  -- Callor Put: 1 Byte Ascii String Enum with 2 values
  index = dissect.callor_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String Enum with 2 values
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String Enum with 2 values
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

-- Dissect: Series Update
dissect.series_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.series_update then
    local range = buffer(offset, 72)
    local display = display.series_update(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.series_update, range, display)
  end

  return dissect.series_update_fields(buffer, offset, packet, parent)
end

-- Display: System Time Message
display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Time Message
dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
dissect.system_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_time_message then
    local range = buffer(offset, 4)
    local display = display.system_time_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.system_time_message, range, display)
  end

  return dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, code)
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

-- Display: Data
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
  -- Parse Data type dependency
  local code = buffer(offset - 1, 1):string()

  if not show.data then
    return dissect.data_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.data(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(miax_ctom_mach_1_1.fields.data, range, display)

  return dissect.data_branches(code, buffer, offset, packet, element)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
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

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Application Message
size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + 1

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

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = dissect.data(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Message
dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.application_message then
    local length = size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.application_message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.application_message, range, display)
  end

  return dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Application Message
  if code == 3 then
    return size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
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
  -- Parse Payload type dependency
  local code = buffer(offset - 2, 1):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_ctom_mach_1_1.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Size: Session Number
size_of.session_number = 1

-- Display: Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
dissect.session_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_number)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.session_number, range, value, display)

  return offset + size_of.session_number
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
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.packet_type, range, value, display)

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
  local range = buffer(offset, size_of.packet_length)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.packet_length, range, value, display)

  return offset + size_of.packet_length
end

-- Size: Sequence Number
size_of.sequence_number = 8

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence_number)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_ctom_mach_1_1.fields.sequence_number, range, value, display)

  return offset + size_of.sequence_number
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 12

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

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(miax_ctom_mach_1_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
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
function miax_ctom_mach_1_1.init()
end

-- Dissector for Miax cTom Mach 1.1
function miax_ctom_mach_1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_ctom_mach_1_1.name

  -- Dissect protocol
  local protocol = parent:add(miax_ctom_mach_1_1, buffer(), miax_ctom_mach_1_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_ctom_mach_1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_ctom_mach_1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax cTom Mach 1.1
local function miax_ctom_mach_1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_ctom_mach_1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_ctom_mach_1_1
  miax_ctom_mach_1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Miax cTom Mach 1.1 Heuristic
miax_ctom_mach_1_1:register_heuristic("udp", miax_ctom_mach_1_1_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.1
-- Date: Friday, July 15, 2016
-- Script:
-- Source Version: 1.3.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
