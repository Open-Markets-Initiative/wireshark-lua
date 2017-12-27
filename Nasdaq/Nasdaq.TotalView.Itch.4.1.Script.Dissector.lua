-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq TotalView Itch 4.1 Protocol
local nasdaq_totalview_itch_4_1 = Proto("Nasdaq.TotalView.Itch.4.1.Lua", "Nasdaq TotalView Itch 4.1")

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

-- Nasdaq TotalView Itch 4.1 Format Options
format.add_order_no_mpid_message = true
format.add_order_with_mpid_message = true
format.broken_trade_execution_message = true
format.cross_trade_message = true
format.market_participant_position_message = true
format.message = true
format.message_header = true
format.net_order_imbalance_indicator_message = true
format.order_cancel_message = true
format.order_delete_message = true
format.order_executed_message = true
format.order_executed_with_price_message = true
format.order_replace_message = true
format.packet = true
format.packet_header = true
format.reg_sho_short_sale_price_test_restricted_indicator_message = true
format.retail_price_improvement_indicator_message = true
format.stock_directory_message = true
format.system_event_message = true
format.time_stamp_message = true
format.trade_message = true
format.payload = true

-- Nasdaq TotalView Itch 4.1 Element Dissection Options
show.add_order_no_mpid_message = true
show.add_order_with_mpid_message = true
show.broken_trade_execution_message = true
show.cross_trade_message = true
show.market_participant_position_message = true
show.message = true
show.message_header = true
show.net_order_imbalance_indicator_message = true
show.order_cancel_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replace_message = true
show.packet = true
show.packet_header = true
show.reg_sho_short_sale_price_test_restricted_indicator_message = true
show.retail_price_improvement_indicator_message = true
show.stock_directory_message = true
show.system_event_message = true
show.time_stamp_message = true
show.trade_message = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq TotalView Itch 4.1 Fields
nasdaq_totalview_itch_4_1.fields.add_order_no_mpid_message = ProtoField.new("Add Order No Mpid Message", "nasdaq.totalview.itch.addordernompidmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.add_order_with_mpid_message = ProtoField.new("Add Order with Mpid Message", "nasdaq.totalview.itch.addorderwithmpidmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.attribution = ProtoField.new("Attribution", "nasdaq.totalview.itch.attribution", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.broken_trade_execution_message = ProtoField.new("Broken Trade Execution Message", "nasdaq.totalview.itch.brokentradeexecutionmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.totalview.itch.canceledshares", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.count = ProtoField.new("Count", "nasdaq.totalview.itch.count", ftypes.UINT16)
nasdaq_totalview_itch_4_1.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.totalview.itch.crossprice", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.totalview.itch.crosstrademessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.totalview.itch.crosstype", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.totalview.itch.currentreferenceprice", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.totalview.itch.eventcode", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.totalview.itch.executedshares", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.totalview.itch.executionprice", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.far_price = ProtoField.new("Far Price", "nasdaq.totalview.itch.farprice", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.totalview.itch.financialstatusindicator", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.totalview.itch.imbalancedirection", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.totalview.itch.imbalanceshares", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.totalview.itch.interestflag", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.length = ProtoField.new("Length", "nasdaq.totalview.itch.length", ftypes.UINT16)
nasdaq_totalview_itch_4_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.totalview.itch.marketcategory", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.totalview.itch.marketmakermode", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.totalview.itch.marketparticipantpositionmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.totalview.itch.marketparticipantstate", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.totalview.itch.matchnumber", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.message = ProtoField.new("Message", "nasdaq.totalview.itch.message", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.totalview.itch.messageheader", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.totalview.itch.messagetype", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.mpid = ProtoField.new("Mpid", "nasdaq.totalview.itch.mpid", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.near_price = ProtoField.new("Near Price", "nasdaq.totalview.itch.nearprice", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.totalview.itch.netorderimbalanceindicatormessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.totalview.itch.neworderreferencenumber", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.totalview.itch.ordercancelmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.totalview.itch.orderdeletemessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.totalview.itch.orderexecutedmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.totalview.itch.orderexecutedwithpricemessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.totalview.itch.orderreferencenumber", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.totalview.itch.orderreplacemessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.totalview.itch.originalorderreferencenumber", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.packet = ProtoField.new("Packet", "nasdaq.totalview.itch.packet", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.totalview.itch.packetheader", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.totalview.itch.pairedshares", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.payload = ProtoField.new("Payload", "nasdaq.totalview.itch.payload", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.price = ProtoField.new("Price", "nasdaq.totalview.itch.price", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.totalview.itch.pricevariationindicator", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.totalview.itch.primarymarketmaker", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.printable = ProtoField.new("Printable", "nasdaq.totalview.itch.printable", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.totalview.itch.regshoaction", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.totalview.itch.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.totalview.itch.retailpriceimprovementindicatormessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.second = ProtoField.new("Second", "nasdaq.totalview.itch.second", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.totalview.itch.sequence", ftypes.UINT64)
nasdaq_totalview_itch_4_1.fields.session = ProtoField.new("Session", "nasdaq.totalview.itch.session", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.shares = ProtoField.new("Shares", "nasdaq.totalview.itch.shares", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.side = ProtoField.new("Side", "nasdaq.totalview.itch.side", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.stock = ProtoField.new("Stock", "nasdaq.totalview.itch.stock", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.totalview.itch.stockdirectorymessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.totalview.itch.systemeventmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.time_stamp_message = ProtoField.new("Time Stamp Message", "nasdaq.totalview.itch.timestampmessage", ftypes.STRING)
nasdaq_totalview_itch_4_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.totalview.itch.timestamp", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.timestamp__nanoseconds = ProtoField.new("Timestamp  Nanoseconds", "nasdaq.totalview.itch.timestampnanoseconds", ftypes.UINT32)
nasdaq_totalview_itch_4_1.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.totalview.itch.trademessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Dissect Nasdaq TotalView Itch 4.1
-----------------------------------------------------------------------

-- Display: Interest Flag
display.interest_flag = function(value)
  if value == "B" then
    return "Interest Flag: RPI orders available (B)"
  end
  if value == "S" then
    return "Interest Flag: RPI orders available (S)"
  end
  if value == "A" then
    return "Interest Flag: RPI orders available (A)"
  end
  if value == "N" then
    return "Interest Flag: No RPI (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
dissect.interest_flag = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.interest_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.interest_flag, range, value, display)

  return offset + length
end

-- Display Stock
display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
dissect.stock = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.stock, range, value, display)

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
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.timestamp, range, value, display)

  return offset + length
end

-- Display: Retail Price Improvement Indicator Message
display.retail_price_improvement_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
dissect.retail_price_improvement_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index = dissect.interest_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
dissect.retail_price_improvement_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_improvement_indicator_message then
    local range = buffer(offset, 13)
    local display = display.retail_price_improvement_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.retail_price_improvement_indicator_message, range, display)
  end

  return dissect.retail_price_improvement_indicator_message_fields(buffer, offset, packet, parent)
end

-- Display: Price Variation Indicator
display.price_variation_indicator = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: 1 to 1.99% (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: 2 to 2.99% (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: 3 to 3.99% (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: 4 to 4.99% (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: 5 to 5.99% (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: 6 to 6.99% (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: 7 to 7.99% (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: 8 to 8.99% (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: 9 to 9.99% (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: 10 to 19.99% (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: 20 to 29.99% (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: 30% or greater (C)"
  end
  if value == " " then
    return "Price Variation Indicator: Cannot be calculated ( )"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.price_variation_indicator, range, value, display)

  return offset + length
end

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end
  if value == "H" then
    return "Cross Type: Cross for IPO and halted (H)"
  end
  if value == "I" then
    return "Cross Type: NASDAQ Cross Network (I)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.cross_type, range, value, display)

  return offset + length
end

-- Display Current Reference Price
display.current_reference_price = function(value)
  return "Current Reference Price: "..value
end

-- Dissect: Current Reference Price
dissect.current_reference_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.current_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.current_reference_price, range, value, display)

  return offset + length
end

-- Display Near Price
display.near_price = function(value)
  return "Near Price: "..value
end

-- Dissect: Near Price
dissect.near_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.near_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.near_price, range, value, display)

  return offset + length
end

-- Display Far Price
display.far_price = function(value)
  return "Far Price: "..value
end

-- Dissect: Far Price
dissect.far_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.far_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.far_price, range, value, display)

  return offset + length
end

-- Display: Imbalance Direction
display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: sell (S)"
  end
  if value == "N" then
    return "Imbalance Direction: no (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient orders (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.imbalance_direction, range, value, display)

  return offset + length
end

-- Display Imbalance Shares
display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.imbalance_shares, range, value, display)

  return offset + length
end

-- Display Paired Shares
display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.paired_shares, range, value, display)

  return offset + length
end

-- Display: Net Order Imbalance Indicator Message
display.net_order_imbalance_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index = dissect.paired_shares(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index = dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index = dissect.imbalance_direction(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.far_price(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.near_price(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.current_reference_price(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index = dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_order_imbalance_indicator_message then
    local range = buffer(offset, 43)
    local display = display.net_order_imbalance_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.net_order_imbalance_indicator_message, range, display)
  end

  return dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, parent)
end

-- Display Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.match_number, range, value, display)

  return offset + length
end

-- Display: Broken Trade Execution Message
display.broken_trade_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Execution Message
dissect.broken_trade_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Execution Message
dissect.broken_trade_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_execution_message then
    local range = buffer(offset, 12)
    local display = display.broken_trade_execution_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.broken_trade_execution_message, range, display)
  end

  return dissect.broken_trade_execution_message_fields(buffer, offset, packet, parent)
end

-- Display Cross Price
display.cross_price = function(value)
  return "Cross Price: "..value
end

-- Dissect: Cross Price
dissect.cross_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.cross_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.cross_price, range, value, display)

  return offset + length
end

-- Display Shares
display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
dissect.shares = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.shares, range, value, display)

  return offset + length
end

-- Display: Cross Trade Message
display.cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Trade Message
dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index = dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
dissect.cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_trade_message then
    local range = buffer(offset, 29)
    local display = display.cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.cross_trade_message, range, display)
  end

  return dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Display Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.price, range, value, display)

  return offset + length
end

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: buy (B)"
  end
  if value == "S" then
    return "Side: sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.side, range, value, display)

  return offset + length
end

-- Display Order Reference Number
display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.order_reference_number, range, value, display)

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

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local range = buffer(offset, 37)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Display New Order Reference Number
display.new_order_reference_number = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
dissect.new_order_reference_number = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.new_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.new_order_reference_number, range, value, display)

  return offset + length
end

-- Display Original Order Reference Number
display.original_order_reference_number = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
dissect.original_order_reference_number = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.original_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.original_order_reference_number, range, value, display)

  return offset + length
end

-- Display Timestamp  Nanoseconds
display.timestamp__nanoseconds = function(value)
  return "Timestamp  Nanoseconds: "..value
end

-- Dissect: Timestamp  Nanoseconds
dissect.timestamp__nanoseconds = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.timestamp__nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.timestamp__nanoseconds, range, value, display)

  return offset + length
end

-- Display: Order Replace Message
display.order_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message
dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp  Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp__nanoseconds(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.original_order_reference_number(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.new_order_reference_number(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
dissect.order_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message then
    local range = buffer(offset, 28)
    local display = display.order_replace_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.order_replace_message, range, display)
  end

  return dissect.order_replace_message_fields(buffer, offset, packet, parent)
end

-- Display: Order Delete Message
display.order_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete Message
dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
dissect.order_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete_message then
    local range = buffer(offset, 12)
    local display = display.order_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.order_delete_message, range, display)
  end

  return dissect.order_delete_message_fields(buffer, offset, packet, parent)
end

-- Display Canceled Shares
display.canceled_shares = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
dissect.canceled_shares = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.canceled_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.canceled_shares, range, value, display)

  return offset + length
end

-- Display: Order Cancel Message
display.order_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Message
dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.canceled_shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
dissect.order_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_message then
    local range = buffer(offset, 16)
    local display = display.order_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.order_cancel_message, range, display)
  end

  return dissect.order_cancel_message_fields(buffer, offset, packet, parent)
end

-- Display Execution Price
display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
dissect.execution_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.execution_price, range, value, display)

  return offset + length
end

-- Display: Printable
display.printable = function(value)
  if value == "N" then
    return "Printable: nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.printable, range, value, display)

  return offset + length
end

-- Display Executed Shares
display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.executed_shares, range, value, display)

  return offset + length
end

-- Display: Order Executed With Price Message
display.order_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.execution_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price_message then
    local range = buffer(offset, 29)
    local display = display.order_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.order_executed_with_price_message, range, display)
  end

  return dissect.order_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local range = buffer(offset, 24)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Display Attribution
display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
dissect.attribution = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.attribution(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.attribution, range, value, display)

  return offset + length
end

-- Display: Add Order with Mpid Message
display.add_order_with_mpid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order with Mpid Message
dissect.add_order_with_mpid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index = dissect.attribution(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order with Mpid Message
dissect.add_order_with_mpid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_with_mpid_message then
    local range = buffer(offset, 33)
    local display = display.add_order_with_mpid_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.add_order_with_mpid_message, range, display)
  end

  return dissect.add_order_with_mpid_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Order No Mpid Message
display.add_order_no_mpid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order No Mpid Message
dissect.add_order_no_mpid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Message
dissect.add_order_no_mpid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_no_mpid_message then
    local range = buffer(offset, 29)
    local display = display.add_order_no_mpid_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.add_order_no_mpid_message, range, display)
  end

  return dissect.add_order_no_mpid_message_fields(buffer, offset, packet, parent)
end

-- Display: Market Participant State
display.market_participant_state = function(value)
  if value == "A" then
    return "Market Participant State: Active (A)"
  end
  if value == "E" then
    return "Market Participant State: ExcusedWithdrawn (E)"
  end
  if value == "W" then
    return "Market Participant State: Withdrawn (W)"
  end
  if value == "S" then
    return "Market Participant State: Suspended (S)"
  end
  if value == "D" then
    return "Market Participant State: Deleted (D)"
  end

  return "Market Participant State: Unknown("..value..")"
end

-- Dissect: Market Participant State
dissect.market_participant_state = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_participant_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.market_participant_state, range, value, display)

  return offset + length
end

-- Display: Market Maker Mode
display.market_maker_mode = function(value)
  if value == "N" then
    return "Market Maker Mode: normal (N)"
  end
  if value == "P" then
    return "Market Maker Mode: passive (P)"
  end
  if value == "S" then
    return "Market Maker Mode: syndicate (S)"
  end
  if value == "L" then
    return "Market Maker Mode: penalty (L)"
  end

  return "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
dissect.market_maker_mode = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_maker_mode(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.market_maker_mode, range, value, display)

  return offset + length
end

-- Display: Primary Market Maker
display.primary_market_maker = function(value)
  if value == "Y" then
    return "Primary Market Maker: primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: nonprimary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
dissect.primary_market_maker = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_market_maker(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.primary_market_maker, range, value, display)

  return offset + length
end

-- Display Mpid
display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
dissect.mpid = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.mpid, range, value, display)

  return offset + length
end

-- Display: Market Participant Position Message
display.market_participant_position_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Participant Position Message
dissect.market_participant_position_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index = dissect.mpid(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index = dissect.primary_market_maker(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 4 values
  index = dissect.market_maker_mode(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index = dissect.market_participant_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
dissect.market_participant_position_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_participant_position_message then
    local range = buffer(offset, 19)
    local display = display.market_participant_position_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.market_participant_position_message, range, display)
  end

  return dissect.market_participant_position_message_fields(buffer, offset, packet, parent)
end

-- Display: Reg Sho Action
display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No price (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg SHO Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg SHO Short Sale Price Test (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.reg_sho_action, range, value, display)

  return offset + length
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
display.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    local range = buffer(offset, 13)
    local display = display.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  return dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
end

-- Display Financial Status Indicator
display.financial_status_indicator = function(value)
  return "Financial Status Indicator: "..value
end

-- Dissect: Financial Status Indicator
dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.financial_status_indicator, range, value, display)

  return offset + length
end

-- Display: Market Category
display.market_category = function(value)
  if value == "D" then
    return "Market Category: Delinquent (D)"
  end
  if value == "E" then
    return "Market Category: Deficient (E)"
  end
  if value == "Q" then
    return "Market Category: Bankrupt (Q)"
  end
  if value == "S" then
    return "Market Category: Suspended (S)"
  end
  if value == "G" then
    return "Market Category: Deficient and Bankrupt (G)"
  end
  if value == "H" then
    return "Market Category: Deficient and Delinquent (H)"
  end
  if value == "J" then
    return "Market Category: Delinquent and Bankrupt (J)"
  end
  if value == "K" then
    return "Market Category: Deficient Delinquent and Bankrupt (K)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
dissect.market_category = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.market_category, range, value, display)

  return offset + length
end

-- Display: Stock Directory Message
display.stock_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Directory Message
dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index = dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 8 values
  index = dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String
  index = dissect.financial_status_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
dissect.stock_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_directory_message then
    local range = buffer(offset, 14)
    local display = display.stock_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.stock_directory_message, range, display)
  end

  return dissect.stock_directory_message_fields(buffer, offset, packet, parent)
end

-- Display: Event Code
display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start of System hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start of Market hours (Q)"
  end
  if value == "M" then
    return "Event Code: End of Market hours (M)"
  end
  if value == "E" then
    return "Event Code: End of System hours (E)"
  end
  if value == "C" then
    return "Event Code: End of Message (C)"
  end
  if value == "A" then
    return "Event Code: Halt (A)"
  end
  if value == "R" then
    return "Event Code: Quote Only Period (R)"
  end
  if value == "B" then
    return "Event Code: Resumption (B)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.event_code, range, value, display)

  return offset + length
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 9 values
  index = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local range = buffer(offset, 5)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Display Second
display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
dissect.second = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.second, range, value, display)

  return offset + length
end

-- Display: Time Stamp Message
display.time_stamp_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Stamp Message
dissect.time_stamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index = dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Stamp Message
dissect.time_stamp_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_stamp_message then
    local range = buffer(offset, 4)
    local display = display.time_stamp_message(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.time_stamp_message, range, display)
  end

  return dissect.time_stamp_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Time Stamp Message
  if code == "T" then
    return 4
  end
  -- Size of System Event Message
  if code == "S" then
    return 5
  end
  -- Size of Stock Directory Message
  if code == "R" then
    return 14
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if code == "Y" then
    return 13
  end
  -- Size of Market Participant Position Message
  if code == "L" then
    return 19
  end
  -- Size of Add Order No Mpid Message
  if code == "A" then
    return 29
  end
  -- Size of Add Order with Mpid Message
  if code == "F" then
    return 33
  end
  -- Size of Order Executed Message
  if code == "E" then
    return 24
  end
  -- Size of Order Executed With Price Message
  if code == "C" then
    return 29
  end
  -- Size of Order Cancel Message
  if code == "X" then
    return 16
  end
  -- Size of Order Delete Message
  if code == "D" then
    return 12
  end
  -- Size of Order Replace Message
  if code == "D" then
    return 28
  end
  -- Size of Trade Message
  if code == "P" then
    return 37
  end
  -- Size of Cross Trade Message
  if code == "Q" then
    return 29
  end
  -- Size of Broken Trade Execution Message
  if code == "B" then
    return 12
  end
  -- Size of Net Order Imbalance Indicator Message
  if code == "I" then
    return 43
  end
  -- Size of Retail Price Improvement Indicator Message
  if code == "N" then
    return 13
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Time Stamp Message
  if code == "T" then
    return dissect.time_stamp_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if code == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if code == "R" then
    return dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if code == "Y" then
    return dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if code == "L" then
    return dissect.market_participant_position_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Message
  if code == "A" then
    return dissect.add_order_no_mpid_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order with Mpid Message
  if code == "F" then
    return dissect.add_order_with_mpid_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if code == "E" then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if code == "C" then
    return dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if code == "X" then
    return dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if code == "D" then
    return dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if code == "D" then
    return dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if code == "P" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if code == "Q" then
    return dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Execution Message
  if code == "B" then
    return dissect.broken_trade_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if code == "I" then
    return dissect.net_order_imbalance_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if code == "N" then
    return dissect.retail_price_improvement_indicator_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 1, 1):string()

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
  local element = parent:add(nasdaq_totalview_itch_4_1.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display: Message Type
display.message_type = function(value)
  if value == "T" then
    return "Message Type: Time Stamp Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "L" then
    return "Message Type: Market Participant Position Message (L)"
  end
  if value == "A" then
    return "Message Type: Add Order No Mpid Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order with Mpid Message (F)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "D" then
    return "Message Type: Order Replace Message (D)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Execution Message (B)"
  end
  if value == "I" then
    return "Message Type: Net Order Imbalance Indicator Message (I)"
  end
  if value == "N" then
    return "Message Type: Retail Price Improvement Indicator Message (N)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Display Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.length, range, value, display)

  return offset + length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
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

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 17 branches
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
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Display Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.count, range, value, display)

  return offset + length, value
end

-- Display Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.sequence, range, value, display)

  return offset + length
end

-- Display Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = 10
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_totalview_itch_4_1.fields.session, range, value, display)

  return offset + length
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 20)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_totalview_itch_4_1.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_totalview_itch_4_1.init()
end

-- Dissector for Nasdaq TotalView Itch 4.1
function nasdaq_totalview_itch_4_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_totalview_itch_4_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_totalview_itch_4_1, buffer(), nasdaq_totalview_itch_4_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_totalview_itch_4_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_totalview_itch_4_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq TotalView Itch 4.1
local function nasdaq_totalview_itch_4_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_totalview_itch_4_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_totalview_itch_4_1
  nasdaq_totalview_itch_4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Nasdaq TotalView Itch 4.1 Heuristic
nasdaq_totalview_itch_4_1:register_heuristic("udp", nasdaq_totalview_itch_4_1_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 4.1
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
