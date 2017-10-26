-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Mach Tom 1.9 Protocol
local miax_mach_tom_1_9 = Proto("Miax.Mach.Tom.1.9.Lua", "Miax Mach Tom 1.9")

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

-- Miax Mach Tom 1.9 Format Options
format.application_message = true
format.double_sided_top_of_market_compact_message = true
format.message = true
format.packet = true
format.series_update = true
format.system_state_message = true
format.system_time_message = true
format.top_of_market_bid_compact_message = true
format.top_of_market_offer_compact_message = true
format.trade_cancel_message = true
format.trade_message = true
format.underlying_trading_status_message = true
format.wide_double_sided_top_of_market_message = true
format.wide_top_of_market_bid_message = true
format.wide_top_of_market_offer_message = true
format.data = true
format.payload = true

-- Miax Mach Tom 1.9 Element Dissection Options
show.application_message = true
show.double_sided_top_of_market_compact_message = true
show.message = true
show.packet = true
show.series_update = true
show.system_state_message = true
show.system_time_message = true
show.top_of_market_bid_compact_message = true
show.top_of_market_offer_compact_message = true
show.trade_cancel_message = true
show.trade_message = true
show.underlying_trading_status_message = true
show.wide_double_sided_top_of_market_message = true
show.wide_top_of_market_bid_message = true
show.wide_top_of_market_offer_message = true
show.data = false
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Mach Tom 1.9 Fields
miax_mach_tom_1_9.fields.activeon_miax = ProtoField.new("Activeon MIAX", "Miax.Mach.Tom.activeonmiax", ftypes.STRING)
miax_mach_tom_1_9.fields.application_message = ProtoField.new("Application Message", "Miax.Mach.Tom.applicationmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.bid_condition = ProtoField.new("Bid Condition", "Miax.Mach.Tom.bidcondition", ftypes.STRING)
miax_mach_tom_1_9.fields.bid_price = ProtoField.new("Bid Price", "Miax.Mach.Tom.bidprice", ftypes.UINT16)
miax_mach_tom_1_9.fields.bid_priority_customer_size = ProtoField.new("Bid Priority Customer Size", "Miax.Mach.Tom.bidprioritycustomersize", ftypes.UINT16)
miax_mach_tom_1_9.fields.bid_size = ProtoField.new("Bid Size", "Miax.Mach.Tom.bidsize", ftypes.UINT16)
miax_mach_tom_1_9.fields.callor_put = ProtoField.new("Callor Put", "Miax.Mach.Tom.callorput", ftypes.STRING)
miax_mach_tom_1_9.fields.closing_time = ProtoField.new("Closing Time", "Miax.Mach.Tom.closingtime", ftypes.STRING)
miax_mach_tom_1_9.fields.correction_number = ProtoField.new("Correction Number", "Miax.Mach.Tom.correctionnumber", ftypes.UINT8)
miax_mach_tom_1_9.fields.data = ProtoField.new("Data", "Miax.Mach.Tom.data", ftypes.STRING)
miax_mach_tom_1_9.fields.double_sided_top_of_market_compact_message = ProtoField.new("Double-Sided Top of Market Compact Message", "Miax.Mach.Tom.doublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.event_reason = ProtoField.new("Event Reason", "Miax.Mach.Tom.eventreason", ftypes.STRING)
miax_mach_tom_1_9.fields.expected_event_time__nano__seconds_part = ProtoField.new("Expected Event Time: Nano- Seconds Part", "Miax.Mach.Tom.expectedeventtimenanosecondspart", ftypes.UINT32)
miax_mach_tom_1_9.fields.expiration_date = ProtoField.new("Expiration Date", "Miax.Mach.Tom.expirationdate", ftypes.STRING)
miax_mach_tom_1_9.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "Miax.Mach.Tom.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_mach_tom_1_9.fields.long_term_option = ProtoField.new("Long Term Option", "Miax.Mach.Tom.longtermoption", ftypes.STRING)
miax_mach_tom_1_9.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "Miax.Mach.Tom.mbbocondition", ftypes.STRING)
miax_mach_tom_1_9.fields.mbbo_price = ProtoField.new("Mbbo Price", "Miax.Mach.Tom.mbboprice", ftypes.UINT16)
miax_mach_tom_1_9.fields.mbbo_price = ProtoField.new("MBBO Price", "Miax.Mach.Tom.mbboprice", ftypes.UINT16)
miax_mach_tom_1_9.fields.mbbo_priority_customer_size = ProtoField.new("Mbbo Priority Customer Size", "Miax.Mach.Tom.mbboprioritycustomersize", ftypes.UINT16)
miax_mach_tom_1_9.fields.mbbo_priority_customer_size = ProtoField.new("MBBO Priority Customer Size", "Miax.Mach.Tom.mbboprioritycustomersize", ftypes.UINT16)
miax_mach_tom_1_9.fields.mbbo_size = ProtoField.new("Mbbo Size", "Miax.Mach.Tom.mbbosize", ftypes.UINT16)
miax_mach_tom_1_9.fields.mbbo_size = ProtoField.new("MBBO Size", "Miax.Mach.Tom.mbbosize", ftypes.UINT16)
miax_mach_tom_1_9.fields.message = ProtoField.new("Message", "Miax.Mach.Tom.message", ftypes.STRING)
miax_mach_tom_1_9.fields.message_type = ProtoField.new("Message Type", "Miax.Mach.Tom.messagetype", ftypes.STRING)
miax_mach_tom_1_9.fields.miaxbbo_posting_increment_indicator = ProtoField.new("MIAXBBO Posting Increment Indicator", "Miax.Mach.Tom.miaxbbopostingincrementindicator", ftypes.STRING)
miax_mach_tom_1_9.fields.notification_time = ProtoField.new("Notification Time", "Miax.Mach.Tom.notificationtime", ftypes.UINT32)
miax_mach_tom_1_9.fields.offer_condition = ProtoField.new("Offer Condition", "Miax.Mach.Tom.offercondition", ftypes.STRING)
miax_mach_tom_1_9.fields.offer_price = ProtoField.new("Offer Price", "Miax.Mach.Tom.offerprice", ftypes.UINT16)
miax_mach_tom_1_9.fields.offer_priority_customer_size = ProtoField.new("Offer Priority Customer Size", "Miax.Mach.Tom.offerprioritycustomersize", ftypes.UINT16)
miax_mach_tom_1_9.fields.offer_size = ProtoField.new("Offer Size", "Miax.Mach.Tom.offersize", ftypes.UINT16)
miax_mach_tom_1_9.fields.opening_time = ProtoField.new("Opening Time", "Miax.Mach.Tom.openingtime", ftypes.STRING)
miax_mach_tom_1_9.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "Miax.Mach.Tom.openingunderlyingmarketcode", ftypes.STRING)
miax_mach_tom_1_9.fields.packet = ProtoField.new("Packet", "Miax.Mach.Tom.packet", ftypes.STRING)
miax_mach_tom_1_9.fields.packet_length = ProtoField.new("Packet Length", "Miax.Mach.Tom.packetlength", ftypes.UINT16)
miax_mach_tom_1_9.fields.packet_type = ProtoField.new("Packet Type", "Miax.Mach.Tom.packettype", ftypes.UINT8)
miax_mach_tom_1_9.fields.payload = ProtoField.new("Payload", "Miax.Mach.Tom.payload", ftypes.STRING)
miax_mach_tom_1_9.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "Miax.Mach.Tom.priorityquotewidth", ftypes.UINT32)
miax_mach_tom_1_9.fields.product_add__update_time = ProtoField.new("Product Add/ Update Time", "Miax.Mach.Tom.productaddupdatetime", ftypes.UINT32)
miax_mach_tom_1_9.fields.product_id = ProtoField.new("Product ID", "Miax.Mach.Tom.productid", ftypes.UINT32)
miax_mach_tom_1_9.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "Miax.Mach.Tom.referencecorrectionnumber", ftypes.UINT8)
miax_mach_tom_1_9.fields.reference_trade_id = ProtoField.new("Reference Trade ID", "Miax.Mach.Tom.referencetradeid", ftypes.UINT32)
miax_mach_tom_1_9.fields.reserved = ProtoField.new("Reserved", "Miax.Mach.Tom.reserved", ftypes.UINT64)
miax_mach_tom_1_9.fields.restricted_option = ProtoField.new("Restricted Option", "Miax.Mach.Tom.restrictedoption", ftypes.STRING)
miax_mach_tom_1_9.fields.seconds_part = ProtoField.new("Seconds Part", "Miax.Mach.Tom.secondspart", ftypes.UINT32)
miax_mach_tom_1_9.fields.security_symbol = ProtoField.new("Security Symbol", "Miax.Mach.Tom.securitysymbol", ftypes.STRING)
miax_mach_tom_1_9.fields.sequence_number = ProtoField.new("Sequence Number", "Miax.Mach.Tom.sequencenumber", ftypes.UINT64)
miax_mach_tom_1_9.fields.series_update = ProtoField.new("Series Update", "Miax.Mach.Tom.seriesupdate", ftypes.STRING)
miax_mach_tom_1_9.fields.session_id = ProtoField.new("Session ID", "Miax.Mach.Tom.sessionid", ftypes.UINT32)
miax_mach_tom_1_9.fields.session_number = ProtoField.new("Session Number", "Miax.Mach.Tom.sessionnumber", ftypes.UINT8)
miax_mach_tom_1_9.fields.strike_price = ProtoField.new("Strike Price", "Miax.Mach.Tom.strikeprice", ftypes.UINT32)
miax_mach_tom_1_9.fields.system_state_message = ProtoField.new("System State Message", "Miax.Mach.Tom.systemstatemessage", ftypes.STRING)
miax_mach_tom_1_9.fields.system_status = ProtoField.new("System Status", "Miax.Mach.Tom.systemstatus", ftypes.STRING)
miax_mach_tom_1_9.fields.system_time_message = ProtoField.new("System Time Message", "Miax.Mach.Tom.systemtimemessage", ftypes.STRING)
miax_mach_tom_1_9.fields.timestamp = ProtoField.new("Timestamp", "Miax.Mach.Tom.timestamp", ftypes.UINT32)
miax_mach_tom_1_9.fields.to_m_version = ProtoField.new("To M Version", "Miax.Mach.Tom.tomversion", ftypes.STRING)
miax_mach_tom_1_9.fields.top_of_market_bid_compact_message = ProtoField.new("Top of Market Bid Compact Message", "Miax.Mach.Tom.topofmarketbidcompactmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.top_of_market_offer_compact_message = ProtoField.new("Top of Market Offer Compact Message", "Miax.Mach.Tom.topofmarketoffercompactmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "Miax.Mach.Tom.tradecancelmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.trade_condition = ProtoField.new("Trade Condition", "Miax.Mach.Tom.tradecondition", ftypes.STRING)
miax_mach_tom_1_9.fields.trade_id = ProtoField.new("Trade ID", "Miax.Mach.Tom.tradeid", ftypes.UINT32)
miax_mach_tom_1_9.fields.trade_message = ProtoField.new("Trade Message", "Miax.Mach.Tom.trademessage", ftypes.STRING)
miax_mach_tom_1_9.fields.trade_price = ProtoField.new("Trade Price", "Miax.Mach.Tom.tradeprice", ftypes.UINT32)
miax_mach_tom_1_9.fields.trade_size = ProtoField.new("Trade Size", "Miax.Mach.Tom.tradesize", ftypes.UINT32)
miax_mach_tom_1_9.fields.trading_status = ProtoField.new("Trading Status", "Miax.Mach.Tom.tradingstatus", ftypes.STRING)
miax_mach_tom_1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "Miax.Mach.Tom.underlyingsymbol", ftypes.STRING)
miax_mach_tom_1_9.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "Miax.Mach.Tom.underlyingtradingstatusmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.wide_double_sided_top_of_market_message = ProtoField.new("Wide Double Sided Top of Market Message", "Miax.Mach.Tom.widedoublesidedtopofmarketmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.wide_top_of_market_bid_message = ProtoField.new("Wide Top of Market Bid Message", "Miax.Mach.Tom.widetopofmarketbidmessage", ftypes.STRING)
miax_mach_tom_1_9.fields.wide_top_of_market_offer_message = ProtoField.new("Wide Top of Market Offer Message", "Miax.Mach.Tom.widetopofmarketoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Dissect Miax Mach Tom 1.9
-----------------------------------------------------------------------

-- Display Expected Event Time: Nano- Seconds Part
display.expected_event_time__nano__seconds_part = function(value)
  return "Expected Event Time: Nano- Seconds Part: "..value
end

-- Dissect: Expected Event Time: Nano- Seconds Part
dissect.expected_event_time__nano__seconds_part = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expected_event_time__nano__seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.expected_event_time__nano__seconds_part, range, value, display)

  return offset + length
end

-- Display Seconds Part
display.seconds_part = function(value)
  return "Seconds Part: "..value
end

-- Dissect: Seconds Part
dissect.seconds_part = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.seconds_part, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_reason(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.event_reason, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.trading_status, range, value, display)

  return offset + length
end

-- Display Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = 11
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.underlying_symbol, range, value, display)

  return offset + length
end

-- Display Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.timestamp, range, value, display)

  return offset + length
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

  -- Expected Event Time: Nano- Seconds Part: 4 Byte Unsigned Fixed Width Integer
  index = dissect.expected_event_time__nano__seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Message
dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_trading_status_message then
    local range = buffer(offset, 25)
    local display = display.underlying_trading_status_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.underlying_trading_status_message, range, display)
  end

  return dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
end

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "A" then
    return "Trade Condition: Cancel Of Trade (A)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.trade_condition, range, value, display)

  return offset + length
end

-- Display Trade Size
display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
dissect.trade_size = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.trade_size, range, value, display)

  return offset + length
end

-- Display Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.trade_price, range, value, display)

  return offset + length
end

-- Display Correction Number
display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
dissect.correction_number = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.correction_number, range, value, display)

  return offset + length
end

-- Display Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect: Trade ID
dissect.trade_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.trade_id, range, value, display)

  return offset + length
end

-- Display Product ID
display.product_id = function(value)
  return "Product ID: "..value
end

-- Dissect: Product ID
dissect.product_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.product_id, range, value, display)

  return offset + length
end

-- Display: Trade Cancel Message
display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local range = buffer(offset, 22)
    local display = display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.trade_cancel_message, range, display)
  end

  return dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Display Reference Correction Number
display.reference_correction_number = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
dissect.reference_correction_number = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.reference_correction_number, range, value, display)

  return offset + length
end

-- Display Reference Trade ID
display.reference_trade_id = function(value)
  return "Reference Trade ID: "..value
end

-- Dissect: Reference Trade ID
dissect.reference_trade_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reference_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.reference_trade_id, range, value, display)

  return offset + length
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Reference Trade ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_trade_id(buffer, index, packet, parent)

  -- Reference Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.reference_correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local range = buffer(offset, 27)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Offer Condition
display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "B" then
    return "Offer Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Offer Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
dissect.offer_condition = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.offer_condition, range, value, display)

  return offset + length
end

-- Display Offer Priority Customer Size
display.offer_priority_customer_size = function(value)
  return "Offer Priority Customer Size: "..value
end

-- Dissect: Offer Priority Customer Size
dissect.offer_priority_customer_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.offer_priority_customer_size, range, value, display)

  return offset + length
end

-- Display Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.offer_size, range, value, display)

  return offset + length
end

-- Display Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
dissect.offer_price = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.offer_price, range, value, display)

  return offset + length
end

-- Display: Bid Condition
display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "B" then
    return "Bid Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Bid Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
dissect.bid_condition = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.bid_condition, range, value, display)

  return offset + length
end

-- Display Bid Priority Customer Size
display.bid_priority_customer_size = function(value)
  return "Bid Priority Customer Size: "..value
end

-- Dissect: Bid Priority Customer Size
dissect.bid_priority_customer_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.bid_priority_customer_size, range, value, display)

  return offset + length
end

-- Display Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.bid_size, range, value, display)

  return offset + length
end

-- Display Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.bid_price, range, value, display)

  return offset + length
end

-- Display: Wide Double Sided Top of Market Message
display.wide_double_sided_top_of_market_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Double Sided Top of Market Message
dissect.wide_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Double Sided Top of Market Message
dissect.wide_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_double_sided_top_of_market_message then
    local range = buffer(offset, 22)
    local display = display.wide_double_sided_top_of_market_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.wide_double_sided_top_of_market_message, range, display)
  end

  return dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
end

-- Display: Double-Sided Top of Market Compact Message
display.double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Double-Sided Top of Market Compact Message
dissect.double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Double-Sided Top of Market Compact Message
dissect.double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.double_sided_top_of_market_compact_message then
    local range = buffer(offset, 22)
    local display = display.double_sided_top_of_market_compact_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.double_sided_top_of_market_compact_message, range, display)
  end

  return dissect.double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
end

-- Display: Mbbo Condition
display.mbbo_condition = function(value)
  if value == "A" then
    return "Mbbo Condition: Regular (A)"
  end
  if value == "B" then
    return "Mbbo Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Mbbo Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Mbbo Condition: Trading Halt (T)"
  end

  return "Mbbo Condition: Unknown("..value..")"
end

-- Dissect: Mbbo Condition
dissect.mbbo_condition = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mbbo_condition(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_condition, range, value, display)

  return offset + length
end

-- Display MBBO Priority Customer Size
display.mbbo_priority_customer_size = function(value)
  return "MBBO Priority Customer Size: "..value
end

-- Dissect: MBBO Priority Customer Size
dissect.mbbo_priority_customer_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_priority_customer_size, range, value, display)

  return offset + length
end

-- Display MBBO Size
display.mbbo_size = function(value)
  return "MBBO Size: "..value
end

-- Dissect: MBBO Size
dissect.mbbo_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_size, range, value, display)

  return offset + length
end

-- Display MBBO Price
display.mbbo_price = function(value)
  return "MBBO Price: "..value
end

-- Dissect: MBBO Price
dissect.mbbo_price = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_price, range, value, display)

  return offset + length
end

-- Display: Wide Top of Market Offer Message
display.wide_top_of_market_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Top of Market Offer Message
dissect.wide_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- MBBO Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- MBBO Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- MBBO Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top of Market Offer Message
dissect.wide_top_of_market_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_top_of_market_offer_message then
    local range = buffer(offset, 15)
    local display = display.wide_top_of_market_offer_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.wide_top_of_market_offer_message, range, display)
  end

  return dissect.wide_top_of_market_offer_message_fields(buffer, offset, packet, parent)
end

-- Display: Wide Top of Market Bid Message
display.wide_top_of_market_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Top of Market Bid Message
dissect.wide_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- MBBO Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- MBBO Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- MBBO Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top of Market Bid Message
dissect.wide_top_of_market_bid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_top_of_market_bid_message then
    local range = buffer(offset, 15)
    local display = display.wide_top_of_market_bid_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.wide_top_of_market_bid_message, range, display)
  end

  return dissect.wide_top_of_market_bid_message_fields(buffer, offset, packet, parent)
end

-- Display Mbbo Priority Customer Size
display.mbbo_priority_customer_size = function(value)
  return "Mbbo Priority Customer Size: "..value
end

-- Dissect: Mbbo Priority Customer Size
dissect.mbbo_priority_customer_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_priority_customer_size, range, value, display)

  return offset + length
end

-- Display Mbbo Size
display.mbbo_size = function(value)
  return "Mbbo Size: "..value
end

-- Dissect: Mbbo Size
dissect.mbbo_size = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_size(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_size, range, value, display)

  return offset + length
end

-- Display Mbbo Price
display.mbbo_price = function(value)
  return "Mbbo Price: "..value
end

-- Dissect: Mbbo Price
dissect.mbbo_price = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mbbo_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.mbbo_price, range, value, display)

  return offset + length
end

-- Display: Top of Market Offer Compact Message
display.top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top of Market Offer Compact Message
dissect.top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- Mbbo Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Top of Market Offer Compact Message
dissect.top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_market_offer_compact_message then
    local range = buffer(offset, 15)
    local display = display.top_of_market_offer_compact_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.top_of_market_offer_compact_message, range, display)
  end

  return dissect.top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
end

-- Display: Top of Market Bid Compact Message
display.top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top of Market Bid Compact Message
dissect.top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- Mbbo Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Top of Market Bid Compact Message
dissect.top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_market_bid_compact_message then
    local range = buffer(offset, 15)
    local display = display.top_of_market_bid_compact_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.top_of_market_bid_compact_message, range, display)
  end

  return dissect.top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
end

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
  if value == "B" then
    return "System Status: Top Bid (B)"
  end
  if value == "O" then
    return "System Status: Top Offer (O)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
dissect.system_status = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.system_status, range, value, display)

  return offset + length
end

-- Display Session ID
display.session_id = function(value)
  return "Session ID: "..value
end

-- Dissect: Session ID
dissect.session_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.session_id, range, value, display)

  return offset + length
end

-- Display To M Version
display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
dissect.to_m_version = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.to_m_version, range, value, display)

  return offset + length
end

-- Display Notification Time
display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
dissect.notification_time = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.notification_time, range, value, display)

  return offset + length
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

  -- To M Version: 8 Byte Ascii String
  index = dissect.to_m_version(buffer, index, packet, parent)

  -- Session ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 6 values
  index = dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local range = buffer(offset, 17)
    local display = display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.system_state_message, range, display)
  end

  return dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Display Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.reserved, range, value, display)

  return offset + length
end

-- Display Priority Quote Width
display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Dissect: Priority Quote Width
dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.priority_quote_width, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.opening_underlying_market_code, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length
end

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
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.miaxbbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.miaxbbo_posting_increment_indicator, range, value, display)

  return offset + length
end

-- Display Activeon MIAX
display.activeon_miax = function(value)
  return "Activeon MIAX: "..value
end

-- Dissect: Activeon MIAX
dissect.activeon_miax = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.activeon_miax(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.activeon_miax, range, value, display)

  return offset + length
end

-- Display Long Term Option
display.long_term_option = function(value)
  return "Long Term Option: "..value
end

-- Dissect: Long Term Option
dissect.long_term_option = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.long_term_option, range, value, display)

  return offset + length
end

-- Display Restricted Option
display.restricted_option = function(value)
  return "Restricted Option: "..value
end

-- Dissect: Restricted Option
dissect.restricted_option = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.restricted_option, range, value, display)

  return offset + length
end

-- Display Closing Time
display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
dissect.closing_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.closing_time, range, value, display)

  return offset + length
end

-- Display Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
dissect.opening_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.opening_time, range, value, display)

  return offset + length
end

-- Display Callor Put
display.callor_put = function(value)
  return "Callor Put: "..value
end

-- Dissect: Callor Put
dissect.callor_put = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.callor_put(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.callor_put, range, value, display)

  return offset + length
end

-- Display Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.strike_price, range, value, display)

  return offset + length
end

-- Display Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.expiration_date, range, value, display)

  return offset + length
end

-- Display Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = 6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.security_symbol, range, value, display)

  return offset + length
end

-- Display Product Add/ Update Time
display.product_add__update_time = function(value)
  return "Product Add/ Update Time: "..value
end

-- Dissect: Product Add/ Update Time
dissect.product_add__update_time = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.product_add__update_time(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.product_add__update_time, range, value, display)

  return offset + length
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

  -- Callor Put: 1 Byte Ascii String
  index = dissect.callor_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String
  index = dissect.long_term_option(buffer, index, packet, parent)

  -- Activeon MIAX: 1 Byte Ascii String
  index = dissect.activeon_miax(buffer, index, packet, parent)

  -- MIAXBBO Posting Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.miaxbbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: 1 Byte Ascii String Enum with 17 values
  index = dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update
dissect.series_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.series_update then
    local range = buffer(offset, 72)
    local display = display.series_update(buffer, packet, parent)
    parent = parent:add(miax_mach_tom_1_9.fields.series_update, range, display)
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
    parent = parent:add(miax_mach_tom_1_9.fields.system_time_message, range, display)
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
  -- Size of System State Message
  if code == "S" then
    return 17
  end
  -- Size of Top of Market Bid Compact Message
  if code == "B" then
    return 15
  end
  -- Size of Top of Market Offer Compact Message
  if code == "O" then
    return 15
  end
  -- Size of Wide Top of Market Bid Message
  if code == "W" then
    return 15
  end
  -- Size of Wide Top of Market Offer Message
  if code == "A" then
    return 15
  end
  -- Size of Double-Sided Top of Market Compact Message
  if code == "d" then
    return 22
  end
  -- Size of Wide Double Sided Top of Market Message
  if code == "D" then
    return 22
  end
  -- Size of Trade Message
  if code == "T" then
    return 27
  end
  -- Size of Trade Cancel Message
  if code == "X" then
    return 22
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
  -- Dissect System State Message
  if code == "S" then
    return dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Top of Market Bid Compact Message
  if code == "B" then
    return dissect.top_of_market_bid_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Top of Market Offer Compact Message
  if code == "O" then
    return dissect.top_of_market_offer_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top of Market Bid Message
  if code == "W" then
    return dissect.wide_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top of Market Offer Message
  if code == "A" then
    return dissect.wide_top_of_market_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Double-Sided Top of Market Compact Message
  if code == "d" then
    return dissect.double_sided_top_of_market_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Double Sided Top of Market Message
  if code == "D" then
    return dissect.wide_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if code == "T" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if code == "X" then
    return dissect.trade_cancel_message(buffer, offset, packet, parent)
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
  local element = parent:add(miax_mach_tom_1_9.fields.data, range, display)

  return dissect.data_branches(code, buffer, offset, packet, element)
end

-- Display: Message Type
display.message_type = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update (P)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "B" then
    return "Message Type: Top of Market Bid Compact Message (B)"
  end
  if value == "O" then
    return "Message Type: Top of Market Offer Compact Message (O)"
  end
  if value == "W" then
    return "Message Type: Wide Top of Market Bid Message (W)"
  end
  if value == "A" then
    return "Message Type: Wide Top of Market Offer Message (A)"
  end
  if value == "d" then
    return "Message Type: Double-Sided Top of Market Compact Message (d)"
  end
  if value == "D" then
    return "Message Type: Wide Double Sided Top of Market Message (D)"
  end
  if value == "T" then
    return "Message Type: Trade Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Message (X)"
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

  parent:add(miax_mach_tom_1_9.fields.message_type, range, value, display)

  return offset + length
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
    parent = parent:add(miax_mach_tom_1_9.fields.application_message, range, display)
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
  local element = parent:add(miax_mach_tom_1_9.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
dissect.session_number = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.session_number, range, value, display)

  return offset + length
end

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

  parent:add(miax_mach_tom_1_9.fields.packet_type, range, value, display)

  return offset + length
end

-- Display Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.packet_length, range, value, display)

  return offset + length
end

-- Display Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_mach_tom_1_9.fields.sequence_number, range, value, display)

  return offset + length
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
    parent = parent:add(miax_mach_tom_1_9.fields.message, range, display)
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
function miax_mach_tom_1_9.init()
end

-- Dissector for Miax Mach Tom 1.9
function miax_mach_tom_1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_mach_tom_1_9.name

  -- Dissect protocol
  local protocol = parent:add(miax_mach_tom_1_9, buffer(), miax_mach_tom_1_9.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_mach_tom_1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_mach_tom_1_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Mach Tom 1.9
local function miax_mach_tom_1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_mach_tom_1_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_mach_tom_1_9
  miax_mach_tom_1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Miax Mach Tom 1.9 Heuristic
miax_mach_tom_1_9:register_heuristic("udp", miax_mach_tom_1_9_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 1.9
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
