-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Tom v19 Protocol
local miax_tom_v19 = Proto("miax.tom.v19.lua", "Miax Tom v19 Protocol")

-- Component Tables
local show = {}
local display = {}
local dissect = {}
local calculate = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Tom v19 Protocol Element Dissection Options
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
show.data = true
show.payload = true

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Tom v19 Protocol Fields
miax_tom_v19.fields.activeon_miax = ProtoField.new("Activeon MIAX", "miax.tom.v19.activeonmiax", ftypes.STRING)
miax_tom_v19.fields.application_message = ProtoField.new("Application Message", "miax.tom.v19.applicationmessage", ftypes.STRING)
miax_tom_v19.fields.bid_condition = ProtoField.new("Bid Condition", "miax.tom.v19.bidcondition", ftypes.STRING)
miax_tom_v19.fields.bid_price = ProtoField.new("Bid Price", "miax.tom.v19.bidprice", ftypes.UINT16)
miax_tom_v19.fields.bid_priority_customer_size = ProtoField.new("Bid Priority Customer Size", "miax.tom.v19.bidprioritycustomersize", ftypes.UINT16)
miax_tom_v19.fields.bid_size = ProtoField.new("Bid Size", "miax.tom.v19.bidsize", ftypes.UINT16)
miax_tom_v19.fields.callor_put = ProtoField.new("Callor Put", "miax.tom.v19.callorput", ftypes.STRING)
miax_tom_v19.fields.closing_time = ProtoField.new("Closing Time", "miax.tom.v19.closingtime", ftypes.STRING)
miax_tom_v19.fields.correction_number = ProtoField.new("Correction Number", "miax.tom.v19.correctionnumber", ftypes.UINT8)
miax_tom_v19.fields.data = ProtoField.new("Data", "miax.tom.v19.data", ftypes.STRING)
miax_tom_v19.fields.double_sided_top_of_market_compact_message = ProtoField.new("Double-Sided Top of Market Compact Message", "miax.tom.v19.doublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_tom_v19.fields.event_reason = ProtoField.new("Event Reason", "miax.tom.v19.eventreason", ftypes.STRING)
miax_tom_v19.fields.expected_event_time__nano__seconds_part = ProtoField.new("Expected Event Time: Nano- Seconds Part", "miax.tom.v19.expectedeventtimenanosecondspart", ftypes.UINT32)
miax_tom_v19.fields.expiration_date = ProtoField.new("Expiration Date", "miax.tom.v19.expirationdate", ftypes.STRING)
miax_tom_v19.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.tom.v19.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_tom_v19.fields.long_term_option = ProtoField.new("Long Term Option", "miax.tom.v19.longtermoption", ftypes.STRING)
miax_tom_v19.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "miax.tom.v19.mbbocondition", ftypes.STRING)
miax_tom_v19.fields.mbbo_price = ProtoField.new("Mbbo Price", "miax.tom.v19.mbboprice", ftypes.UINT16)
miax_tom_v19.fields.mbbo_priority_customer_size = ProtoField.new("Mbbo Priority Customer Size", "miax.tom.v19.mbboprioritycustomersize", ftypes.UINT16)
miax_tom_v19.fields.mbbo_size = ProtoField.new("Mbbo Size", "miax.tom.v19.mbbosize", ftypes.UINT16)
miax_tom_v19.fields.message = ProtoField.new("Message", "miax.tom.v19.message", ftypes.STRING)
miax_tom_v19.fields.message_type = ProtoField.new("Message Type", "miax.tom.v19.messagetype", ftypes.STRING)
miax_tom_v19.fields.miaxbbo_posting_increment_indicator = ProtoField.new("MIAXBBO Posting Increment Indicator", "miax.tom.v19.miaxbbopostingincrementindicator", ftypes.STRING)
miax_tom_v19.fields.notification_time = ProtoField.new("Notification Time", "miax.tom.v19.notificationtime", ftypes.UINT32)
miax_tom_v19.fields.offer_condition = ProtoField.new("Offer Condition", "miax.tom.v19.offercondition", ftypes.STRING)
miax_tom_v19.fields.offer_price = ProtoField.new("Offer Price", "miax.tom.v19.offerprice", ftypes.UINT16)
miax_tom_v19.fields.offer_priority_customer_size = ProtoField.new("Offer Priority Customer Size", "miax.tom.v19.offerprioritycustomersize", ftypes.UINT16)
miax_tom_v19.fields.offer_size = ProtoField.new("Offer Size", "miax.tom.v19.offersize", ftypes.UINT16)
miax_tom_v19.fields.opening_time = ProtoField.new("Opening Time", "miax.tom.v19.openingtime", ftypes.STRING)
miax_tom_v19.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.tom.v19.openingunderlyingmarketcode", ftypes.STRING)
miax_tom_v19.fields.packet = ProtoField.new("packet", "miax.tom.v19.packet", ftypes.STRING)
miax_tom_v19.fields.packet_length = ProtoField.new("Packet Length", "miax.tom.v19.packetlength", ftypes.UINT16)
miax_tom_v19.fields.packet_type = ProtoField.new("Packet Type", "miax.tom.v19.packettype", ftypes.UINT8)
miax_tom_v19.fields.payload = ProtoField.new("Payload", "miax.tom.v19.payload", ftypes.STRING)
miax_tom_v19.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.tom.v19.priorityquotewidth", ftypes.UINT32)
miax_tom_v19.fields.product_add__update_time = ProtoField.new("Product Add/ Update Time", "miax.tom.v19.productaddupdatetime", ftypes.UINT32)
miax_tom_v19.fields.product_id = ProtoField.new("Product ID", "miax.tom.v19.productid", ftypes.UINT32)
miax_tom_v19.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.tom.v19.referencecorrectionnumber", ftypes.UINT8)
miax_tom_v19.fields.reference_trade_id = ProtoField.new("Reference Trade ID", "miax.tom.v19.referencetradeid", ftypes.UINT32)
miax_tom_v19.fields.reserved = ProtoField.new("Reserved", "miax.tom.v19.reserved", ftypes.UINT64)
miax_tom_v19.fields.restricted_option = ProtoField.new("Restricted Option", "miax.tom.v19.restrictedoption", ftypes.STRING)
miax_tom_v19.fields.seconds_part = ProtoField.new("Seconds Part", "miax.tom.v19.secondspart", ftypes.UINT32)
miax_tom_v19.fields.security_symbol = ProtoField.new("Security Symbol", "miax.tom.v19.securitysymbol", ftypes.STRING)
miax_tom_v19.fields.sequence_number = ProtoField.new("Sequence Number", "miax.tom.v19.sequencenumber", ftypes.UINT64)
miax_tom_v19.fields.series_update = ProtoField.new("Series Update", "miax.tom.v19.seriesupdate", ftypes.STRING)
miax_tom_v19.fields.session_id = ProtoField.new("Session ID", "miax.tom.v19.sessionid", ftypes.UINT32)
miax_tom_v19.fields.session_number = ProtoField.new("Session Number", "miax.tom.v19.sessionnumber", ftypes.UINT8)
miax_tom_v19.fields.strike_price = ProtoField.new("Strike Price", "miax.tom.v19.strikeprice", ftypes.UINT32)
miax_tom_v19.fields.system_state_message = ProtoField.new("System State Message", "miax.tom.v19.systemstatemessage", ftypes.STRING)
miax_tom_v19.fields.system_status = ProtoField.new("System Status", "miax.tom.v19.systemstatus", ftypes.STRING)
miax_tom_v19.fields.system_time_message = ProtoField.new("System Time Message", "miax.tom.v19.systemtimemessage", ftypes.STRING)
miax_tom_v19.fields.timestamp = ProtoField.new("Timestamp", "miax.tom.v19.timestamp", ftypes.UINT32)
miax_tom_v19.fields.to_m_version = ProtoField.new("To M Version", "miax.tom.v19.tomversion", ftypes.STRING)
miax_tom_v19.fields.top_of_market_bid_compact_message = ProtoField.new("Top of Market Bid Compact Message", "miax.tom.v19.topofmarketbidcompactmessage", ftypes.STRING)
miax_tom_v19.fields.top_of_market_offer_compact_message = ProtoField.new("Top of Market Offer Compact Message", "miax.tom.v19.topofmarketoffercompactmessage", ftypes.STRING)
miax_tom_v19.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.tom.v19.tradecancelmessage", ftypes.STRING)
miax_tom_v19.fields.trade_condition = ProtoField.new("Trade Condition", "miax.tom.v19.tradecondition", ftypes.STRING)
miax_tom_v19.fields.trade_id = ProtoField.new("Trade ID", "miax.tom.v19.tradeid", ftypes.UINT32)
miax_tom_v19.fields.trade_message = ProtoField.new("Trade Message", "miax.tom.v19.trademessage", ftypes.STRING)
miax_tom_v19.fields.trade_price = ProtoField.new("Trade Price", "miax.tom.v19.tradeprice", ftypes.UINT32)
miax_tom_v19.fields.trade_size = ProtoField.new("Trade Size", "miax.tom.v19.tradesize", ftypes.UINT32)
miax_tom_v19.fields.trading_status = ProtoField.new("Trading Status", "miax.tom.v19.tradingstatus", ftypes.STRING)
miax_tom_v19.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.tom.v19.underlyingsymbol", ftypes.STRING)
miax_tom_v19.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "miax.tom.v19.underlyingtradingstatusmessage", ftypes.STRING)
miax_tom_v19.fields.wide_double_sided_top_of_market_message = ProtoField.new("Wide Double Sided Top of Market Message", "miax.tom.v19.widedoublesidedtopofmarketmessage", ftypes.STRING)
miax_tom_v19.fields.wide_top_of_market_bid_message = ProtoField.new("Wide Top of Market Bid Message", "miax.tom.v19.widetopofmarketbidmessage", ftypes.STRING)
miax_tom_v19.fields.wide_top_of_market_offer_message = ProtoField.new("Wide Top of Market Offer Message", "miax.tom.v19.widetopofmarketoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Dissect Miax Tom v19 Protocol
-----------------------------------------------------------------------

-- Display Expected Event Time: Nano- Seconds Part
display.expected_event_time__nano__seconds_part = function(value)
  return "Expected Event Time: Nano- Seconds Part: "..value
end

-- Dissect Expected Event Time: Nano- Seconds Part Field
dissect.expected_event_time__nano__seconds_part = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.expected_event_time__nano__seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.expected_event_time__nano__seconds_part, range, value, display)

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

  parent:add(miax_tom_v19.fields.seconds_part, range, value, display)

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

  parent:add(miax_tom_v19.fields.event_reason, range, value, display)

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

  parent:add(miax_tom_v19.fields.trading_status, range, value, display)

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

  parent:add(miax_tom_v19.fields.underlying_symbol, range, value, display)

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

  parent:add(miax_tom_v19.fields.timestamp, range, value, display)

  return offset + size
end

-- Display function for: Underlying Trading Status Message
display.underlying_trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Underlying Trading Status Message Fields
dissect.underlying_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: Fixed Size String Field 11 bytes
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: Character Enum with 3 values
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: Character Enum with 2 values
  index = dissect.event_reason(buffer, index, packet, parent)

  -- Seconds Part: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.seconds_part(buffer, index, packet, parent)

  -- Expected Event Time: Nano- Seconds Part: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.expected_event_time__nano__seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Underlying Trading Status Message
dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  if not show.underlying_trading_status_message then
    return dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.underlying_trading_status_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.underlying_trading_status_message, range, display)

  return dissect.underlying_trading_status_message_fields(buffer, offset, packet, element)
end

-- Display Field: Trade Condition
display.trade_condition = function(value)
  if value == "A" then
    return "Trade Condition: Cancel Of Trade (A)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect Trade Condition Field
dissect.trade_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.trade_condition, range, value, display)

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

  parent:add(miax_tom_v19.fields.trade_size, range, value, display)

  return offset + size
end

-- Display Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect Trade Price Field
dissect.trade_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.trade_price, range, value, display)

  return offset + size
end

-- Display Correction Number
display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect Correction Number Field
dissect.correction_number = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.correction_number, range, value, display)

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

  parent:add(miax_tom_v19.fields.trade_id, range, value, display)

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

  parent:add(miax_tom_v19.fields.product_id, range, value, display)

  return offset + size
end

-- Display function for: Trade Cancel Message
display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Trade Cancel Message Fields
dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: Unsigned 1 Byte Integer, LittleEndian
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Trade Price: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: Character Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Trade Cancel Message
dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  if not show.trade_cancel_message then
    return dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 22)
  local display = display.trade_cancel_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.trade_cancel_message, range, display)

  return dissect.trade_cancel_message_fields(buffer, offset, packet, element)
end

-- Display Reference Correction Number
display.reference_correction_number = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect Reference Correction Number Field
dissect.reference_correction_number = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.reference_correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.reference_correction_number, range, value, display)

  return offset + size
end

-- Display Reference Trade ID
display.reference_trade_id = function(value)
  return "Reference Trade ID: "..value
end

-- Dissect Reference Trade ID Field
dissect.reference_trade_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.reference_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.reference_trade_id, range, value, display)

  return offset + size
end

-- Display function for: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Trade Message Fields
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: Unsigned 1 Byte Integer, LittleEndian
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Reference Trade ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.reference_trade_id(buffer, index, packet, parent)

  -- Reference Correction Number: Unsigned 1 Byte Integer, LittleEndian
  index = dissect.reference_correction_number(buffer, index, packet, parent)

  -- Trade Price: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: Character Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  if not show.trade_message then
    return dissect.trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 27)
  local display = display.trade_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.trade_message, range, display)

  return dissect.trade_message_fields(buffer, offset, packet, element)
end

-- Display Field: Offer Condition
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

-- Dissect Offer Condition Field
dissect.offer_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.offer_condition, range, value, display)

  return offset + size
end

-- Display Offer Priority Customer Size
display.offer_priority_customer_size = function(value)
  return "Offer Priority Customer Size: "..value
end

-- Dissect Offer Priority Customer Size Field
dissect.offer_priority_customer_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.offer_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.offer_priority_customer_size, range, value, display)

  return offset + size
end

-- Display Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect Offer Size Field
dissect.offer_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.offer_size, range, value, display)

  return offset + size
end

-- Display Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect Offer Price Field
dissect.offer_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.offer_price, range, value, display)

  return offset + size
end

-- Display Field: Bid Condition
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

-- Dissect Bid Condition Field
dissect.bid_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.bid_condition, range, value, display)

  return offset + size
end

-- Display Bid Priority Customer Size
display.bid_priority_customer_size = function(value)
  return "Bid Priority Customer Size: "..value
end

-- Dissect Bid Priority Customer Size Field
dissect.bid_priority_customer_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.bid_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.bid_priority_customer_size, range, value, display)

  return offset + size
end

-- Display Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect Bid Size Field
dissect.bid_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.bid_size, range, value, display)

  return offset + size
end

-- Display Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect Bid Price Field
dissect.bid_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.bid_price, range, value, display)

  return offset + size
end

-- Display function for: Wide Double Sided Top of Market Message
display.wide_double_sided_top_of_market_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Double Sided Top of Market Message Fields
dissect.wide_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: Character Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: Character Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Double Sided Top of Market Message
dissect.wide_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if not show.wide_double_sided_top_of_market_message then
    return dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 22)
  local display = display.wide_double_sided_top_of_market_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.wide_double_sided_top_of_market_message, range, display)

  return dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, element)
end

-- Display function for: Double-Sided Top of Market Compact Message
display.double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Double-Sided Top of Market Compact Message Fields
dissect.double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: Character Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: Character Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Double-Sided Top of Market Compact Message
dissect.double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  if not show.double_sided_top_of_market_compact_message then
    return dissect.double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 22)
  local display = display.double_sided_top_of_market_compact_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.double_sided_top_of_market_compact_message, range, display)

  return dissect.double_sided_top_of_market_compact_message_fields(buffer, offset, packet, element)
end

-- Display Field: Mbbo Condition
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

-- Dissect Mbbo Condition Field
dissect.mbbo_condition = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.mbbo_condition(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.mbbo_condition, range, value, display)

  return offset + size
end

-- Display MBBO Priority Customer Size
display.mbbo_priority_customer_size = function(value)
  return "MBBO Priority Customer Size: "..value
end

-- Dissect MBBO Priority Customer Size Field
dissect.mbbo_priority_customer_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.mbbo_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.mbbo_priority_customer_size, range, value, display)

  return offset + size
end

-- Display MBBO Size
display.mbbo_size = function(value)
  return "MBBO Size: "..value
end

-- Dissect MBBO Size Field
dissect.mbbo_size = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.mbbo_size(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.mbbo_size, range, value, display)

  return offset + size
end

-- Display MBBO Price
display.mbbo_price = function(value)
  return "MBBO Price: "..value
end

-- Dissect MBBO Price Field
dissect.mbbo_price = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.mbbo_price(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.mbbo_price, range, value, display)

  return offset + size
end

-- Display function for: Wide Top of Market Offer Message
display.wide_top_of_market_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Top of Market Offer Message Fields
dissect.wide_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- MBBO Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- MBBO Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- MBBO Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: Character Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Top of Market Offer Message
dissect.wide_top_of_market_offer_message = function(buffer, offset, packet, parent)
  if not show.wide_top_of_market_offer_message then
    return dissect.wide_top_of_market_offer_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.wide_top_of_market_offer_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.wide_top_of_market_offer_message, range, display)

  return dissect.wide_top_of_market_offer_message_fields(buffer, offset, packet, element)
end

-- Display function for: Wide Top of Market Bid Message
display.wide_top_of_market_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Wide Top of Market Bid Message Fields
dissect.wide_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- MBBO Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- MBBO Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- MBBO Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: Character Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Wide Top of Market Bid Message
dissect.wide_top_of_market_bid_message = function(buffer, offset, packet, parent)
  if not show.wide_top_of_market_bid_message then
    return dissect.wide_top_of_market_bid_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.wide_top_of_market_bid_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.wide_top_of_market_bid_message, range, display)

  return dissect.wide_top_of_market_bid_message_fields(buffer, offset, packet, element)
end

-- Display function for: Top of Market Offer Compact Message
display.top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Top of Market Offer Compact Message Fields
dissect.top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- Mbbo Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: Character Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Top of Market Offer Compact Message
dissect.top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  if not show.top_of_market_offer_compact_message then
    return dissect.top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.top_of_market_offer_compact_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.top_of_market_offer_compact_message, range, display)

  return dissect.top_of_market_offer_compact_message_fields(buffer, offset, packet, element)
end

-- Display function for: Top of Market Bid Compact Message
display.top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Top of Market Bid Compact Message Fields
dissect.top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_price(buffer, index, packet, parent)

  -- Mbbo Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_size(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.mbbo_priority_customer_size(buffer, index, packet, parent)

  -- Mbbo Condition: Character Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Top of Market Bid Compact Message
dissect.top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  if not show.top_of_market_bid_compact_message then
    return dissect.top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 15)
  local display = display.top_of_market_bid_compact_message(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.top_of_market_bid_compact_message, range, display)

  return dissect.top_of_market_bid_compact_message_fields(buffer, offset, packet, element)
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
  if value == "B" then
    return "System Status: Top Bid (B)"
  end
  if value == "O" then
    return "System Status: Top Offer (O)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect System Status Field
dissect.system_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.system_status, range, value, display)

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

  parent:add(miax_tom_v19.fields.session_id, range, value, display)

  return offset + size
end

-- Display To M Version
display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect To M Version Field
dissect.to_m_version = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.to_m_version, range, value, display)

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

  parent:add(miax_tom_v19.fields.notification_time, range, value, display)

  return offset + size
end

-- Display function for: System State Message
display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect System State Message Fields
dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.notification_time(buffer, index, packet, parent)

  -- To M Version: Fixed Size String Field 8 bytes
  index = dissect.to_m_version(buffer, index, packet, parent)

  -- Session ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.session_id(buffer, index, packet, parent)

  -- System Status: Character Enum with 6 values
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
  local element = parent:add(miax_tom_v19.fields.system_state_message, range, display)

  return dissect.system_state_message_fields(buffer, offset, packet, element)
end

-- Display Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect Reserved Field
dissect.reserved = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.reserved, range, value, display)

  return offset + size
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

  parent:add(miax_tom_v19.fields.priority_quote_width, range, value, display)

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

  parent:add(miax_tom_v19.fields.opening_underlying_market_code, range, value, display)

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

  parent:add(miax_tom_v19.fields.liquidity_acceptance_increment_indicator, range, value, display)

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

  parent:add(miax_tom_v19.fields.miaxbbo_posting_increment_indicator, range, value, display)

  return offset + size
end

-- Display Activeon MIAX
display.activeon_miax = function(value)
  return "Activeon MIAX: "..value
end

-- Dissect Activeon MIAX Field
dissect.activeon_miax = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.activeon_miax(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.activeon_miax, range, value, display)

  return offset + size
end

-- Display Long Term Option
display.long_term_option = function(value)
  return "Long Term Option: "..value
end

-- Dissect Long Term Option Field
dissect.long_term_option = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.long_term_option, range, value, display)

  return offset + size
end

-- Display Restricted Option
display.restricted_option = function(value)
  return "Restricted Option: "..value
end

-- Dissect Restricted Option Field
dissect.restricted_option = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.restricted_option, range, value, display)

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

  parent:add(miax_tom_v19.fields.closing_time, range, value, display)

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

  parent:add(miax_tom_v19.fields.opening_time, range, value, display)

  return offset + size
end

-- Display Callor Put
display.callor_put = function(value)
  return "Callor Put: "..value
end

-- Dissect Callor Put Field
dissect.callor_put = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.callor_put(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.callor_put, range, value, display)

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

  parent:add(miax_tom_v19.fields.strike_price, range, value, display)

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

  parent:add(miax_tom_v19.fields.expiration_date, range, value, display)

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

  parent:add(miax_tom_v19.fields.security_symbol, range, value, display)

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

  parent:add(miax_tom_v19.fields.product_add__update_time, range, value, display)

  return offset + size
end

-- Display function for: Series Update
display.series_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Series Update Fields
dissect.series_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add/ Update Time: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_add__update_time(buffer, index, packet, parent)

  -- Product ID: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: Fixed Size String Field 11 bytes
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: Fixed Size String Field 6 bytes
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: Fixed Size String Field 8 bytes
  index = dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Callor Put: Character
  index = dissect.callor_put(buffer, index, packet, parent)

  -- Opening Time: Fixed Size String Field 8 bytes
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: Fixed Size String Field 8 bytes
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: Character
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: Character
  index = dissect.long_term_option(buffer, index, packet, parent)

  -- Activeon MIAX: Character
  index = dissect.activeon_miax(buffer, index, packet, parent)

  -- MIAXBBO Posting Increment Indicator: Character Enum with 3 values
  index = dissect.miaxbbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Character Enum with 3 values
  index = dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Character Enum with 17 values
  index = dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: Unsigned 4 Byte Integer, LittleEndian
  index = dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved: Unsigned 8 Byte Integer, LittleEndian
  index = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Series Update
dissect.series_update = function(buffer, offset, packet, parent)
  if not show.series_update then
    return dissect.series_update_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 72)
  local display = display.series_update(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.series_update, range, display)

  return dissect.series_update_fields(buffer, offset, packet, element)
end

-- Display function for: System Time Message
display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect System Time Message Fields
dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Unsigned 4 Byte Integer, LittleEndian
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
  local element = parent:add(miax_tom_v19.fields.system_time_message, range, display)

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

  -- Report error
  error("Unknown Type: "..code)

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
  -- Parse data type dependency
  local code = buffer(offset - 1, 1):string()

  if not show.data then
    return dissect.data_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size
  local size = calculate.data(buffer, offset, code)
  if size < 1 then
    return dissect.data_branches(code, buffer, offset, packet, parent)
  end

  -- Dissect if branch has fields
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.data, range, display)

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

-- Dissect Message Type Field
dissect.message_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.message_type, range, value, display)

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

  -- Message Type: Character Enum with 12 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Data: 12  Branches with runtime type Message Type
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
  local element = parent:add(miax_tom_v19.fields.application_message, range, display)

  return dissect.application_message_fields(buffer, offset, packet, element)
end

-- Calculate runtime size of: Payload
calculate.payload = function(buffer, offset, code)
  -- Size of Heartbeat
  if code == 0 then
    return 0
  end
  -- Size of Start Of Session
  if code == 1 then
    return 0
  end
  -- Size of End Of Session
  if code == 2 then
    return 0
  end
  -- Size of Application Message
  if code == 3 then
    return calculate.application_message(buffer, offset)
  end

  -- Report error
  error("Unknown Type: "..code)

  return 0
end

-- Display function for Branch: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Heartbeat
  if code == 0 then
  end
  -- Dissect Start Of Session
  if code == 1 then
  end
  -- Dissect End Of Session
  if code == 2 then
  end
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

  -- Calculate size
  local size = calculate.payload(buffer, offset, code)
  if size < 1 then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Dissect if branch has fields
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_tom_v19.fields.payload, range, display)

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

  parent:add(miax_tom_v19.fields.session_number, range, value, display)

  return offset + size
end

-- Display Packet Type
display.packet_type = function(value)
  return "Packet Type: "..value
end

-- Dissect Packet Type Field
dissect.packet_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_tom_v19.fields.packet_type, range, value, display)

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

  parent:add(miax_tom_v19.fields.packet_length, range, value, display)

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

  parent:add(miax_tom_v19.fields.sequence_number, range, value, display)

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

  -- Sequence Number: Unsigned 8 Byte Integer, LittleEndian
  index = dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: Unsigned 2 Byte Integer, LittleEndian
  index = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: Unsigned 1 Byte Integer, LittleEndian
  index = dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: Unsigned 1 Byte Integer, LittleEndian
  index = dissect.session_number(buffer, index, packet, parent)

  -- Payload: 4  Branches with runtime type Packet Type
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
  local element = parent:add(miax_tom_v19.fields.message, range, display)

  return dissect.message_fields(buffer, offset, packet, element)
end

-- Dissect packet
function dissect.packet(buffer, packet, parent)
  local index = 0

  -- Message: Struct with 5 Fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize dissector variables
function miax_tom_v19.init()
end
-- Dissector for miax tom v19 protocol
function miax_tom_v19.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_tom_v19.name

  -- Dissect protocol
  local protocol = parent:add(miax_tom_v19, buffer(), miax_tom_v19.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register miax tom v19 protocol with udp table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_tom_v19)

-- Verify size of packet
verify.miax_tom_v19_packet_size = function(buffer)

  return true
end

-- Dissector heuristic for miax tom v19 protocol
local function miax_tom_v19_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_tom_v19_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_tom_v19
  miax_tom_v19.dissector(buffer, packet, parent)

  return true
end

-- Register miax tom v19 protocol heuristic
miax_tom_v19:register_heuristic("udp", miax_tom_v19_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: v19
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
