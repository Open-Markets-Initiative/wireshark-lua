-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Phlx MarketDepth Itch 1.5 Protocol
local phlx_marketdepth_itch_v1_5 = Proto("Phlx.MarketDepth.Itch.v1.5.Lua", "Phlx MarketDepth Itch 1.5")

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

-- Phlx MarketDepth Itch 1.5 Format Options
format.add_order_message_long_form = true
format.add_order_message_short_form = true
format.add_quote_message_long_form = true
format.add_quote_message_short_form = true
format.auction_notification_message = true
format.base_reference_message = true
format.block_delete_message = true
format.broken_trade_order_execution_message = true
format.message = true
format.message_header = true
format.non_auction_options_trade_message = true
format.option_directory_message = true
format.options_cross_trade_message = true
format.order_replace_message_short_form = true
format.packet = true
format.packet_header = true
format.quote_delete_message = true
format.quote_replace_long_form_message = true
format.quote_replace_short_form_message = true
format.seconds_message = true
format.security_open_message = true
format.single_side_cancel_message = true
format.single_side_delete_message = true
format.single_side_executed_message = true
format.single_side_executed_with_price_message = true
format.single_side_replace_long_form_message = true
format.single_side_replace_message_long_form = true
format.single_side_replace_message_short_form = true
format.single_side_update_message = true
format.system_event_message = true
format.trading_action_message = true
format.payload = true

-- Phlx MarketDepth Itch 1.5 Element Dissection Options
show.add_order_message_long_form = true
show.add_order_message_short_form = true
show.add_quote_message_long_form = true
show.add_quote_message_short_form = true
show.auction_notification_message = true
show.base_reference_message = true
show.block_delete_message = true
show.broken_trade_order_execution_message = true
show.message = true
show.message_header = true
show.non_auction_options_trade_message = true
show.option_directory_message = true
show.options_cross_trade_message = true
show.order_replace_message_short_form = true
show.packet = true
show.packet_header = true
show.quote_delete_message = true
show.quote_replace_long_form_message = true
show.quote_replace_short_form_message = true
show.seconds_message = true
show.security_open_message = true
show.single_side_cancel_message = true
show.single_side_delete_message = true
show.single_side_executed_message = true
show.single_side_executed_with_price_message = true
show.single_side_replace_long_form_message = true
show.single_side_replace_message_long_form = true
show.single_side_replace_message_short_form = true
show.single_side_update_message = true
show.system_event_message = true
show.trading_action_message = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Phlx MarketDepth Itch 1.5 Fields
phlx_marketdepth_itch_v1_5.fields.add_order_message_long_form = ProtoField.new("Add Order Message Long Form", "phlx.marketdepth.itch.v1.5.addordermessagelongform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.add_order_message_short_form = ProtoField.new("Add Order Message Short Form", "phlx.marketdepth.itch.v1.5.addordermessageshortform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.add_quote_message_long_form = ProtoField.new("Add Quote Message Long Form", "phlx.marketdepth.itch.v1.5.addquotemessagelongform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.add_quote_message_short_form = ProtoField.new("Add Quote Message Short Form", "phlx.marketdepth.itch.v1.5.addquotemessageshortform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.ask = ProtoField.new("Ask", "phlx.marketdepth.itch.v1.5.ask", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.ask_price = ProtoField.new("Ask Price", "phlx.marketdepth.itch.v1.5.askprice", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.ask_reference_number_delta = ProtoField.new("Ask Reference Number Delta", "phlx.marketdepth.itch.v1.5.askreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.ask_size = ProtoField.new("Ask Size", "phlx.marketdepth.itch.v1.5.asksize", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.auction_id = ProtoField.new("Auction ID", "phlx.marketdepth.itch.v1.5.auctionid", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "phlx.marketdepth.itch.v1.5.auctionnotificationmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.auction_type = ProtoField.new("Auction Type", "phlx.marketdepth.itch.v1.5.auctiontype", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.base_reference_message = ProtoField.new("Base Reference Message", "phlx.marketdepth.itch.v1.5.basereferencemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.base_reference_number = ProtoField.new("Base Reference Number", "phlx.marketdepth.itch.v1.5.basereferencenumber", ftypes.UINT64)
phlx_marketdepth_itch_v1_5.fields.bid = ProtoField.new("Bid", "phlx.marketdepth.itch.v1.5.bid", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.bid_price = ProtoField.new("Bid Price", "phlx.marketdepth.itch.v1.5.bidprice", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.bid_reference_number_delta = ProtoField.new("Bid Reference Number Delta", "phlx.marketdepth.itch.v1.5.bidreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.bid_size = ProtoField.new("Bid Size", "phlx.marketdepth.itch.v1.5.bidsize", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.block_delete_message = ProtoField.new("Block Delete Message", "phlx.marketdepth.itch.v1.5.blockdeletemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message = ProtoField.new("Broken Trade Order Execution Message", "phlx.marketdepth.itch.v1.5.brokentradeorderexecutionmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.cancelled_contracts = ProtoField.new("Cancelled Contracts", "phlx.marketdepth.itch.v1.5.cancelledcontracts", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.cancelled_reference_number_delta = ProtoField.new("Cancelled Reference Number Delta", "phlx.marketdepth.itch.v1.5.cancelledreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.change_reason = ProtoField.new("Change Reason", "phlx.marketdepth.itch.v1.5.changereason", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.count = ProtoField.new("Count", "phlx.marketdepth.itch.v1.5.count", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.cross_number = ProtoField.new("Cross Number", "phlx.marketdepth.itch.v1.5.crossnumber", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.cross_type = ProtoField.new("Cross Type", "phlx.marketdepth.itch.v1.5.crosstype", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.current_trading_state = ProtoField.new("Current Trading State", "phlx.marketdepth.itch.v1.5.currenttradingstate", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.customer_indicator = ProtoField.new("Customer Indicator", "phlx.marketdepth.itch.v1.5.customerindicator", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.event_code = ProtoField.new("Event Code", "phlx.marketdepth.itch.v1.5.eventcode", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.executed_contracts = ProtoField.new("Executed Contracts", "phlx.marketdepth.itch.v1.5.executedcontracts", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.expiration_date = ProtoField.new("Expiration Date", "phlx.marketdepth.itch.v1.5.expirationdate", ftypes.UINT8)
phlx_marketdepth_itch_v1_5.fields.expiration_month = ProtoField.new("Expiration Month", "phlx.marketdepth.itch.v1.5.expirationmonth", ftypes.UINT8)
phlx_marketdepth_itch_v1_5.fields.expiration_year = ProtoField.new("Expiration Year", "phlx.marketdepth.itch.v1.5.expirationyear", ftypes.UINT8)
phlx_marketdepth_itch_v1_5.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "phlx.marketdepth.itch.v1.5.explicitstrikeprice", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "phlx.marketdepth.itch.v1.5.imbalancedirection", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.imbalance_price = ProtoField.new("Imbalance Price", "phlx.marketdepth.itch.v1.5.imbalanceprice", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "phlx.marketdepth.itch.v1.5.imbalancevolume", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.length = ProtoField.new("Length", "phlx.marketdepth.itch.v1.5.length", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.market_side = ProtoField.new("Market Side", "phlx.marketdepth.itch.v1.5.marketside", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.match_number = ProtoField.new("Match Number", "phlx.marketdepth.itch.v1.5.matchnumber", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.message = ProtoField.new("Message", "phlx.marketdepth.itch.v1.5.message", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.message_header = ProtoField.new("Message Header", "phlx.marketdepth.itch.v1.5.messageheader", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.message_type = ProtoField.new("Message Type", "phlx.marketdepth.itch.v1.5.messagetype", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.mpv = ProtoField.new("Mpv", "phlx.marketdepth.itch.v1.5.mpv", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.new_reference_number_delta = ProtoField.new("New Reference Number Delta", "phlx.marketdepth.itch.v1.5.newreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.non_auction_options_trade_message = ProtoField.new("Non Auction Options Trade Message", "phlx.marketdepth.itch.v1.5.nonauctionoptionstrademessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas = ProtoField.new("Number of Reference Number Deltas", "phlx.marketdepth.itch.v1.5.numberofreferencenumberdeltas", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.open_state = ProtoField.new("Open State", "phlx.marketdepth.itch.v1.5.openstate", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.option_directory_message = ProtoField.new("Option Directory Message", "phlx.marketdepth.itch.v1.5.optiondirectorymessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.option_id = ProtoField.new("Option ID", "phlx.marketdepth.itch.v1.5.optionid", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.option_type = ProtoField.new("Option Type", "phlx.marketdepth.itch.v1.5.optiontype", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.options_closing_type = ProtoField.new("Options Closing Type", "phlx.marketdepth.itch.v1.5.optionsclosingtype", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.options_cross_trade_message = ProtoField.new("Options Cross Trade Message", "phlx.marketdepth.itch.v1.5.optionscrosstrademessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.order_id = ProtoField.new("Order ID", "phlx.marketdepth.itch.v1.5.orderid", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.order_reference_number_delta = ProtoField.new("Order Reference Number Delta", "phlx.marketdepth.itch.v1.5.orderreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.order_replace_message_short_form = ProtoField.new("Order Replace Message Short Form", "phlx.marketdepth.itch.v1.5.orderreplacemessageshortform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta = ProtoField.new("Original Ask Reference Number Delta", "phlx.marketdepth.itch.v1.5.originalaskreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta = ProtoField.new("Original Bid Reference Number Delta", "phlx.marketdepth.itch.v1.5.originalbidreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.original_reference_number_delta = ProtoField.new("Original Reference Number Delta", "phlx.marketdepth.itch.v1.5.originalreferencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.packet = ProtoField.new("Packet", "phlx.marketdepth.itch.v1.5.packet", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.packet_header = ProtoField.new("Packet Header", "phlx.marketdepth.itch.v1.5.packetheader", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.paired_contracts = ProtoField.new("Paired Contracts", "phlx.marketdepth.itch.v1.5.pairedcontracts", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.payload = ProtoField.new("Payload", "phlx.marketdepth.itch.v1.5.payload", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.price = ProtoField.new("Price", "phlx.marketdepth.itch.v1.5.price", ftypes.UINT16)
phlx_marketdepth_itch_v1_5.fields.printable = ProtoField.new("Printable", "phlx.marketdepth.itch.v1.5.printable", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "phlx.marketdepth.itch.v1.5.quotedeletemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "phlx.marketdepth.itch.v1.5.quotereplacelongformmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "phlx.marketdepth.itch.v1.5.quotereplaceshortformmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.reference_number_delta = ProtoField.new("Reference Number Delta", "phlx.marketdepth.itch.v1.5.referencenumberdelta", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.reserved = ProtoField.new("Reserved", "phlx.marketdepth.itch.v1.5.reserved", ftypes.BYTES)
phlx_marketdepth_itch_v1_5.fields.second = ProtoField.new("Second", "phlx.marketdepth.itch.v1.5.second", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.seconds_message = ProtoField.new("Seconds Message", "phlx.marketdepth.itch.v1.5.secondsmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.security_open_message = ProtoField.new("Security Open Message", "phlx.marketdepth.itch.v1.5.securityopenmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.security_symbol = ProtoField.new("Security Symbol", "phlx.marketdepth.itch.v1.5.securitysymbol", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.sequence = ProtoField.new("Sequence", "phlx.marketdepth.itch.v1.5.sequence", ftypes.UINT64)
phlx_marketdepth_itch_v1_5.fields.session = ProtoField.new("Session", "phlx.marketdepth.itch.v1.5.session", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_cancel_message = ProtoField.new("Single Side Cancel Message", "phlx.marketdepth.itch.v1.5.singlesidecancelmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "phlx.marketdepth.itch.v1.5.singlesidedeletemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "phlx.marketdepth.itch.v1.5.singlesideexecutedmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed with Price Message", "phlx.marketdepth.itch.v1.5.singlesideexecutedwithpricemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "phlx.marketdepth.itch.v1.5.singlesidereplacelongformmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form = ProtoField.new("Single Side Replace Message Long Form", "phlx.marketdepth.itch.v1.5.singlesidereplacemessagelongform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form = ProtoField.new("Single Side Replace Message Short Form", "phlx.marketdepth.itch.v1.5.singlesidereplacemessageshortform", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "phlx.marketdepth.itch.v1.5.singlesideupdatemessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.source = ProtoField.new("Source", "phlx.marketdepth.itch.v1.5.source", ftypes.UINT8)
phlx_marketdepth_itch_v1_5.fields.system_event_message = ProtoField.new("System Event Message", "phlx.marketdepth.itch.v1.5.systemeventmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.timestamp = ProtoField.new("Timestamp", "phlx.marketdepth.itch.v1.5.timestamp", ftypes.UINT32)
phlx_marketdepth_itch_v1_5.fields.tradable = ProtoField.new("Tradable", "phlx.marketdepth.itch.v1.5.tradable", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.trade_indicator = ProtoField.new("Trade Indicator", "phlx.marketdepth.itch.v1.5.tradeindicator", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.trading_action_message = ProtoField.new("Trading Action Message", "phlx.marketdepth.itch.v1.5.tradingactionmessage", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "phlx.marketdepth.itch.v1.5.underlyingsymbol", ftypes.STRING)
phlx_marketdepth_itch_v1_5.fields.volume = ProtoField.new("Volume", "phlx.marketdepth.itch.v1.5.volume", ftypes.UINT16)

-----------------------------------------------------------------------
-- Dissect Phlx MarketDepth Itch 1.5
-----------------------------------------------------------------------

-- Size: Reserved
size_of.reserved = 3

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.reserved, range, value, display)

  return offset + size_of.reserved
end

-- Size: Customer Indicator
size_of.customer_indicator = 1

-- Display: Customer Indicator
display.customer_indicator = function(value)
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end
  if value == "F" then
    return "Customer Indicator: Firm (F)"
  end
  if value == "M" then
    return "Customer Indicator: Onfloor (M)"
  end
  if value == "P" then
    return "Customer Indicator: Professional (P)"
  end
  if value == "B" then
    return "Customer Indicator: NonPHLX (B)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
dissect.customer_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.customer_indicator)
  local value = range:string()
  local display = display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.customer_indicator, range, value, display)

  return offset + size_of.customer_indicator
end

-- Size: Imbalance Volume
size_of.imbalance_volume = 4

-- Display: Imbalance Volume
display.imbalance_volume = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
dissect.imbalance_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_volume)
  local value = range:uint()
  local display = display.imbalance_volume(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.imbalance_volume, range, value, display)

  return offset + size_of.imbalance_volume
end

-- Size: Imbalance Price
size_of.imbalance_price = 4

-- Display: Imbalance Price
display.imbalance_price = function(value)
  return "Imbalance Price: "..value
end

-- Dissect: Imbalance Price
dissect.imbalance_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_price)
  local value = range:uint()
  local display = display.imbalance_price(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.imbalance_price, range, value, display)

  return offset + size_of.imbalance_price
end

-- Size: Option ID
size_of.option_id = 4

-- Display: Option ID
display.option_id = function(value)
  return "Option ID: "..value
end

-- Dissect: Option ID
dissect.option_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_id)
  local value = range:uint()
  local display = display.option_id(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.option_id, range, value, display)

  return offset + size_of.option_id
end

-- Size: Imbalance Direction
size_of.imbalance_direction = 1

-- Display: Imbalance Direction
display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: sell (S)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_direction)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.imbalance_direction, range, value, display)

  return offset + size_of.imbalance_direction
end

-- Size: Paired Contracts
size_of.paired_contracts = 4

-- Display: Paired Contracts
display.paired_contracts = function(value)
  return "Paired Contracts: "..value
end

-- Dissect: Paired Contracts
dissect.paired_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.paired_contracts)
  local value = range:uint()
  local display = display.paired_contracts(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.paired_contracts, range, value, display)

  return offset + size_of.paired_contracts
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "I" then
    return "Auction Type: Exposure (I)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Auction ID
size_of.auction_id = 4

-- Display: Auction ID
display.auction_id = function(value)
  return "Auction ID: "..value
end

-- Dissect: Auction ID
dissect.auction_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_id)
  local value = range:uint()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
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
  local value = range:uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Auction Notification Message
display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Auction ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Paired Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.paired_contracts(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 2 values
  index = dissect.imbalance_direction(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Imbalance Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.imbalance_price(buffer, index, packet, parent)

  -- Imbalance Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.imbalance_volume(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 5 values
  index = dissect.customer_indicator(buffer, index, packet, parent)

  -- Reserved: 3 Byte Unsigned Fixed Width Integer
  index = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local range = buffer(offset, 30)
    local display = display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.auction_notification_message, range, display)
  end

  return dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
size_of.match_number = 4

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.match_number)
  local value = range:uint()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.match_number, range, value, display)

  return offset + size_of.match_number
end

-- Size: Cross Number
size_of.cross_number = 4

-- Display: Cross Number
display.cross_number = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
dissect.cross_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_number)
  local value = range:uint()
  local display = display.cross_number(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.cross_number, range, value, display)

  return offset + size_of.cross_number
end

-- Display: Broken Trade Order Execution Message
display.broken_trade_order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Order Execution Message
dissect.broken_trade_order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Order Execution Message
dissect.broken_trade_order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_order_execution_message then
    local range = buffer(offset, 12)
    local display = display.broken_trade_order_execution_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.broken_trade_order_execution_message, range, display)
  end

  return dissect.broken_trade_order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume
size_of.volume = 2

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.volume, range, value, display)

  return offset + size_of.volume
end

-- Size: Price
size_of.price = 2

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: OpeningReopening (O)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_type)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.cross_type, range, value, display)

  return offset + size_of.cross_type
end

-- Display: Options Cross Trade Message
display.options_cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Cross Trade Message
dissect.options_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 1 values
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Cross Trade Message
dissect.options_cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_cross_trade_message then
    local range = buffer(offset, 21)
    local display = display.options_cross_trade_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.options_cross_trade_message, range, display)
  end

  return dissect.options_cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Indicator
size_of.trade_indicator = 1

-- Display: Trade Indicator
display.trade_indicator = function(value)
  if value == "O" then
    return "Trade Indicator: Non displayable (O)"
  end
  if value == "C" then
    return "Trade Indicator: Complex (C)"
  end
  if value == "P" then
    return "Trade Indicator: PIXL (P)"
  end

  return "Trade Indicator: Unknown("..value..")"
end

-- Dissect: Trade Indicator
dissect.trade_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_indicator)
  local value = range:string()
  local display = display.trade_indicator(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.trade_indicator, range, value, display)

  return offset + size_of.trade_indicator
end

-- Display: Non Auction Options Trade Message
display.non_auction_options_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Non Auction Options Trade Message
dissect.non_auction_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Trade Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.trade_indicator(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Auction Options Trade Message
dissect.non_auction_options_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.non_auction_options_trade_message then
    local range = buffer(offset, 21)
    local display = display.non_auction_options_trade_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.non_auction_options_trade_message, range, display)
  end

  return dissect.non_auction_options_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Cancelled Reference Number Delta
display.cancelled_reference_number_delta = function(value)
  return "Cancelled Reference Number Delta: "..value
end

-- Dissect Cancelled Reference Number Delta Field
dissect.cancelled_reference_number_delta = function(buffer, offset, packet, parent)
  local size =  = TODO
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.cancelled_reference_number_delta(value, buffer, offset, packet, parent)

  return offset + size
end

-- Size: Number of Reference Number Deltas
size_of.number_of_reference_number_deltas = 2

-- Display: Number of Reference Number Deltas
display.number_of_reference_number_deltas = function(value)
  return "Number of Reference Number Deltas: "..value
end

-- Dissect: Number of Reference Number Deltas
dissect.number_of_reference_number_deltas = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_reference_number_deltas(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.number_of_reference_number_deltas, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Block Delete Message
size_of.block_delete_message = function(buffer, offset)
  local index = 0

  index = index + 6

  -- Calculate field size from count
  local cancelled_reference_number_delta_count = buffer(offset + index - 2, 2):uint()
  index = index + cancelled_reference_number_delta_count * 4

  return index
end

-- Display: Block Delete Message
display.block_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Delete Message
dissect.block_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Number of Reference Number Deltas: 2 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_reference_number_deltas(buffer, index, packet, parent)

  -- Cancelled Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  local cancelled_reference_number_delta_count = buffer(index - 2, 2):uint()
  for i = 1, cancelled_reference_number_delta_count do
    index = dissect.cancelled_reference_number_delta(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Block Delete Message
dissect.block_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.block_delete_message then
    local length = size_of.block_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.block_delete_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.block_delete_message, range, display)
  end

  return dissect.block_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Reference Number Delta
size_of.ask_reference_number_delta = 4

-- Display: Ask Reference Number Delta
display.ask_reference_number_delta = function(value)
  return "Ask Reference Number Delta: "..value
end

-- Dissect: Ask Reference Number Delta
dissect.ask_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_reference_number_delta)
  local value = range:uint()
  local display = display.ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.ask_reference_number_delta, range, value, display)

  return offset + size_of.ask_reference_number_delta
end

-- Size: Bid Reference Number Delta
size_of.bid_reference_number_delta = 4

-- Display: Bid Reference Number Delta
display.bid_reference_number_delta = function(value)
  return "Bid Reference Number Delta: "..value
end

-- Dissect: Bid Reference Number Delta
dissect.bid_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_reference_number_delta)
  local value = range:uint()
  local display = display.bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.bid_reference_number_delta, range, value, display)

  return offset + size_of.bid_reference_number_delta
end

-- Display: Quote Delete Message
display.quote_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Delete Message
dissect.quote_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
dissect.quote_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_delete_message then
    local range = buffer(offset, 12)
    local display = display.quote_delete_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.quote_delete_message, range, display)
  end

  return dissect.quote_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Size
size_of.ask_size = 2

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_size)
  local value = range:uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.ask_size, range, value, display)

  return offset + size_of.ask_size
end

-- Size: Ask
size_of.ask = 4

-- Display: Ask
display.ask = function(value)
  return "Ask: "..value
end

-- Dissect: Ask
dissect.ask = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask)
  local value = range:uint()
  local display = display.ask(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.ask, range, value, display)

  return offset + size_of.ask
end

-- Size: Bid Size
size_of.bid_size = 2

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.bid_size, range, value, display)

  return offset + size_of.bid_size
end

-- Size: Bid
size_of.bid = 4

-- Display: Bid
display.bid = function(value)
  return "Bid: "..value
end

-- Dissect: Bid
dissect.bid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid)
  local value = range:uint()
  local display = display.bid(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.bid, range, value, display)

  return offset + size_of.bid
end

-- Size: Original Ask Reference Number Delta
size_of.original_ask_reference_number_delta = 4

-- Display: Original Ask Reference Number Delta
display.original_ask_reference_number_delta = function(value)
  return "Original Ask Reference Number Delta: "..value
end

-- Dissect: Original Ask Reference Number Delta
dissect.original_ask_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_ask_reference_number_delta)
  local value = range:uint()
  local display = display.original_ask_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.original_ask_reference_number_delta, range, value, display)

  return offset + size_of.original_ask_reference_number_delta
end

-- Size: Original Bid Reference Number Delta
size_of.original_bid_reference_number_delta = 4

-- Display: Original Bid Reference Number Delta
display.original_bid_reference_number_delta = function(value)
  return "Original Bid Reference Number Delta: "..value
end

-- Dissect: Original Bid Reference Number Delta
dissect.original_bid_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_bid_reference_number_delta)
  local value = range:uint()
  local display = display.original_bid_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.original_bid_reference_number_delta, range, value, display)

  return offset + size_of.original_bid_reference_number_delta
end

-- Display: Quote Replace Long Form Message
display.quote_replace_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
dissect.quote_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
dissect.quote_replace_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_long_form_message then
    local range = buffer(offset, 32)
    local display = display.quote_replace_long_form_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.quote_replace_long_form_message, range, display)
  end

  return dissect.quote_replace_long_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Price
size_of.ask_price = 2

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_price)
  local value = range:uint()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Size: Bid Price
size_of.bid_price = 2

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price)
  local value = range:uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Display: Quote Replace Short Form Message
display.quote_replace_short_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
dissect.quote_replace_short_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_bid_reference_number_delta(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Original Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_ask_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
dissect.quote_replace_short_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_replace_short_form_message then
    local range = buffer(offset, 28)
    local display = display.quote_replace_short_form_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.quote_replace_short_form_message, range, display)
  end

  return dissect.quote_replace_short_form_message_fields(buffer, offset, packet, parent)
end

-- Size: Change Reason
size_of.change_reason = 1

-- Display: Change Reason
display.change_reason = function(value)
  if value == "U" then
    return "Change Reason: USER (U)"
  end
  if value == "R" then
    return "Change Reason: REPRICE (R)"
  end
  if value == "S" then
    return "Change Reason: SUSPEND (S)"
  end
  if value == "E" then
    return "Change Reason: EXHAUSTED (E)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
dissect.change_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.change_reason)
  local value = range:string()
  local display = display.change_reason(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.change_reason, range, value, display)

  return offset + size_of.change_reason
end

-- Size: Reference Number Delta
size_of.reference_number_delta = 4

-- Display: Reference Number Delta
display.reference_number_delta = function(value)
  return "Reference Number Delta: "..value
end

-- Dissect: Reference Number Delta
dissect.reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_number_delta)
  local value = range:uint()
  local display = display.reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.reference_number_delta, range, value, display)

  return offset + size_of.reference_number_delta
end

-- Display: Single Side Update Message
display.single_side_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Update Message
dissect.single_side_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Change Reason: 1 Byte Ascii String Enum with 4 values
  index = dissect.change_reason(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
dissect.single_side_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_update_message then
    local range = buffer(offset, 13)
    local display = display.single_side_update_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_update_message, range, display)
  end

  return dissect.single_side_update_message_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Delete Message
display.single_side_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Delete Message
dissect.single_side_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
dissect.single_side_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_delete_message then
    local range = buffer(offset, 8)
    local display = display.single_side_delete_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_delete_message, range, display)
  end

  return dissect.single_side_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Order ID
size_of.order_id = 4

-- Display: Order ID
display.order_id = function(value)
  return "Order ID: "..value
end

-- Dissect: Order ID
dissect.order_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_id)
  local value = range:uint()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.order_id, range, value, display)

  return offset + size_of.order_id
end

-- Size: New Reference Number Delta
size_of.new_reference_number_delta = 4

-- Display: New Reference Number Delta
display.new_reference_number_delta = function(value)
  return "New Reference Number Delta: "..value
end

-- Dissect: New Reference Number Delta
dissect.new_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.new_reference_number_delta)
  local value = range:uint()
  local display = display.new_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.new_reference_number_delta, range, value, display)

  return offset + size_of.new_reference_number_delta
end

-- Size: Original Reference Number Delta
size_of.original_reference_number_delta = 4

-- Display: Original Reference Number Delta
display.original_reference_number_delta = function(value)
  return "Original Reference Number Delta: "..value
end

-- Dissect: Original Reference Number Delta
dissect.original_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_reference_number_delta)
  local value = range:uint()
  local display = display.original_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.original_reference_number_delta, range, value, display)

  return offset + size_of.original_reference_number_delta
end

-- Display: Single Side Replace Long Form Message
display.single_side_replace_long_form_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
dissect.single_side_replace_long_form_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Order ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
dissect.single_side_replace_long_form_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_long_form_message then
    local range = buffer(offset, 20)
    local display = display.single_side_replace_long_form_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_replace_long_form_message, range, display)
  end

  return dissect.single_side_replace_long_form_message_fields(buffer, offset, packet, parent)
end

-- Display: Order Replace Message Short Form
display.order_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message Short Form
dissect.order_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Order ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message Short Form
dissect.order_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message_short_form then
    local range = buffer(offset, 20)
    local display = display.order_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.order_replace_message_short_form, range, display)
  end

  return dissect.order_replace_message_short_form_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Replace Message Long Form
display.single_side_replace_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Long Form
dissect.single_side_replace_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_long_form then
    local range = buffer(offset, 16)
    local display = display.single_side_replace_message_long_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_long_form, range, display)
  end

  return dissect.single_side_replace_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Single Side Replace Message Short Form
display.single_side_replace_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Original Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_reference_number_delta(buffer, index, packet, parent)

  -- New Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.new_reference_number_delta(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Message Short Form
dissect.single_side_replace_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_replace_message_short_form then
    local range = buffer(offset, 16)
    local display = display.single_side_replace_message_short_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_replace_message_short_form, range, display)
  end

  return dissect.single_side_replace_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Cancelled Contracts
size_of.cancelled_contracts = 4

-- Display: Cancelled Contracts
display.cancelled_contracts = function(value)
  return "Cancelled Contracts: "..value
end

-- Dissect: Cancelled Contracts
dissect.cancelled_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cancelled_contracts)
  local value = range:uint()
  local display = display.cancelled_contracts(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.cancelled_contracts, range, value, display)

  return offset + size_of.cancelled_contracts
end

-- Display: Single Side Cancel Message
display.single_side_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Cancel Message
dissect.single_side_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cancelled Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cancelled_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Cancel Message
dissect.single_side_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_cancel_message then
    local range = buffer(offset, 12)
    local display = display.single_side_cancel_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_cancel_message, range, display)
  end

  return dissect.single_side_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Printable
size_of.printable = 1

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
  local range = buffer(offset, size_of.printable)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.printable, range, value, display)

  return offset + size_of.printable
end

-- Display: Single Side Executed with Price Message
display.single_side_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed with Price Message
dissect.single_side_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index = dissect.printable(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed with Price Message
dissect.single_side_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_with_price_message then
    local range = buffer(offset, 21)
    local display = display.single_side_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_executed_with_price_message, range, display)
  end

  return dissect.single_side_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Executed Contracts
size_of.executed_contracts = 4

-- Display: Executed Contracts
display.executed_contracts = function(value)
  return "Executed Contracts: "..value
end

-- Dissect: Executed Contracts
dissect.executed_contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.executed_contracts)
  local value = range:uint()
  local display = display.executed_contracts(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.executed_contracts, range, value, display)

  return offset + size_of.executed_contracts
end

-- Display: Single Side Executed Message
display.single_side_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Single Side Executed Message
dissect.single_side_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_number_delta(buffer, index, packet, parent)

  -- Executed Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_contracts(buffer, index, packet, parent)

  -- Cross Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cross_number(buffer, index, packet, parent)

  -- Match Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
dissect.single_side_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.single_side_executed_message then
    local range = buffer(offset, 20)
    local display = display.single_side_executed_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.single_side_executed_message, range, display)
  end

  return dissect.single_side_executed_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Quote Message Long Form
display.add_quote_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Long Form
dissect.add_quote_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Bid: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Long Form
dissect.add_quote_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_long_form then
    local range = buffer(offset, 28)
    local display = display.add_quote_message_long_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.add_quote_message_long_form, range, display)
  end

  return dissect.add_quote_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Add Quote Message Short Form
display.add_quote_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Quote Message Short Form
dissect.add_quote_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Bid Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_reference_number_delta(buffer, index, packet, parent)

  -- Ask Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_reference_number_delta(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Bid Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Message Short Form
dissect.add_quote_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_quote_message_short_form then
    local range = buffer(offset, 24)
    local display = display.add_quote_message_short_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.add_quote_message_short_form, range, display)
  end

  return dissect.add_quote_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Market Side
size_of.market_side = 1

-- Display: Market Side
display.market_side = function(value)
  if value == "B" then
    return "Market Side: Buy (B)"
  end
  if value == "S" then
    return "Market Side: Sell (S)"
  end
  if value == "A" then
    return "Market Side: Buy (A)"
  end
  if value == "B" then
    return "Market Side: Sell (B)"
  end
  if value == "M" then
    return "Market Side: Buy (M)"
  end
  if value == "N" then
    return "Market Side: Sell (N)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
dissect.market_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_side)
  local value = range:string()
  local display = display.market_side(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.market_side, range, value, display)

  return offset + size_of.market_side
end

-- Size: Order Reference Number Delta
size_of.order_reference_number_delta = 4

-- Display: Order Reference Number Delta
display.order_reference_number_delta = function(value)
  return "Order Reference Number Delta: "..value
end

-- Dissect: Order Reference Number Delta
dissect.order_reference_number_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_reference_number_delta)
  local value = range:uint()
  local display = display.order_reference_number_delta(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.order_reference_number_delta, range, value, display)

  return offset + size_of.order_reference_number_delta
end

-- Display: Add Order Message Long Form
display.add_order_message_long_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Long Form
dissect.add_order_message_long_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index = dissect.market_side(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Order ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Long Form
dissect.add_order_message_long_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_long_form then
    local range = buffer(offset, 21)
    local display = display.add_order_message_long_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.add_order_message_long_form, range, display)
  end

  return dissect.add_order_message_long_form_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Message Short Form
display.add_order_message_short_form = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message Short Form
dissect.add_order_message_short_form_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number Delta: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_reference_number_delta(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 6 values
  index = dissect.market_side(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Order ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message Short Form
dissect.add_order_message_short_form = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message_short_form then
    local range = buffer(offset, 21)
    local display = display.add_order_message_short_form(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.add_order_message_short_form, range, display)
  end

  return dissect.add_order_message_short_form_fields(buffer, offset, packet, parent)
end

-- Size: Open State
size_of.open_state = 1

-- Display: Open State
display.open_state = function(value)
  if value == "Y" then
    return "Open State: Open (Y)"
  end
  if value == "N" then
    return "Open State: Closed (N)"
  end

  return "Open State: Unknown("..value..")"
end

-- Dissect: Open State
dissect.open_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_state)
  local value = range:string()
  local display = display.open_state(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.open_state, range, value, display)

  return offset + size_of.open_state
end

-- Display: Security Open Message
display.security_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Open Message
dissect.security_open_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Open State: 1 Byte Ascii String Enum with 2 values
  index = dissect.open_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Open Message
dissect.security_open_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_open_message then
    local range = buffer(offset, 9)
    local display = display.security_open_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.security_open_message, range, display)
  end

  return dissect.security_open_message_fields(buffer, offset, packet, parent)
end

-- Size: Current Trading State
size_of.current_trading_state = 1

-- Display: Current Trading State
display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halt (H)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end
  if value == "B" then
    return "Current Trading State: Buy Side Trading Suspended Exhausted (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Trading Suspended Exhausted (S)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_trading_state)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.current_trading_state, range, value, display)

  return offset + size_of.current_trading_state
end

-- Display: Trading Action Message
display.trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Action Message
dissect.trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index = dissect.current_trading_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
dissect.trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_action_message then
    local range = buffer(offset, 9)
    local display = display.trading_action_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.trading_action_message, range, display)
  end

  return dissect.trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpv
size_of.mpv = 1

-- Display: Mpv
display.mpv = function(value)
  if value == "E" then
    return "Mpv: Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
dissect.mpv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mpv)
  local value = range:string()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Tradable
size_of.tradable = 1

-- Display: Tradable
display.tradable = function(value)
  if value == "Y" then
    return "Tradable: tradable (Y)"
  end
  if value == "N" then
    return "Tradable: not tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
dissect.tradable = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tradable)
  local value = range:string()
  local display = display.tradable(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.tradable, range, value, display)

  return offset + size_of.tradable
end

-- Size: Options Closing Type
size_of.options_closing_type = 1

-- Display: Options Closing Type
display.options_closing_type = function(value)
  if value == "N" then
    return "Options Closing Type: Normal (N)"
  end
  if value == "L" then
    return "Options Closing Type: Late (L)"
  end
  if value == "W" then
    return "Options Closing Type: WCO Early Closing (W)"
  end

  return "Options Closing Type: Unknown("..value..")"
end

-- Dissect: Options Closing Type
dissect.options_closing_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.options_closing_type)
  local value = range:string()
  local display = display.options_closing_type(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.options_closing_type, range, value, display)

  return offset + size_of.options_closing_type
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 13

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Source
size_of.source = 1

-- Display: Source
display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
dissect.source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source)
  local value = range:uint()
  local display = display.source(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.source, range, value, display)

  return offset + size_of.source
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_type)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.option_type, range, value, display)

  return offset + size_of.option_type
end

-- Size: Explicit Strike Price
size_of.explicit_strike_price = 4

-- Display: Explicit Strike Price
display.explicit_strike_price = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
dissect.explicit_strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.explicit_strike_price)
  local value = range:uint()
  local display = display.explicit_strike_price(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.explicit_strike_price, range, value, display)

  return offset + size_of.explicit_strike_price
end

-- Size: Expiration Date
size_of.expiration_date = 1

-- Display: Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_date)
  local value = range:uint()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.expiration_date, range, value, display)

  return offset + size_of.expiration_date
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_month)
  local value = range:uint()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.expiration_month, range, value, display)

  return offset + size_of.expiration_month
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_year)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.expiration_year, range, value, display)

  return offset + size_of.expiration_year
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

  parent:add(phlx_marketdepth_itch_v1_5.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Display: Option Directory Message
display.option_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Directory Message
dissect.option_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Option ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.option_id(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Date: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_date(buffer, index, packet, parent)

  -- Explicit Strike Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.explicit_strike_price(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.option_type(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index = dissect.source(buffer, index, packet, parent)

  -- Underlying Symbol: 13 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Options Closing Type: 1 Byte Ascii String Enum with 3 values
  index = dissect.options_closing_type(buffer, index, packet, parent)

  -- Tradable: 1 Byte Ascii String Enum with 2 values
  index = dissect.tradable(buffer, index, packet, parent)

  -- Mpv: 1 Byte Ascii String Enum with 3 values
  index = dissect.mpv(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Directory Message
dissect.option_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_directory_message then
    local range = buffer(offset, 39)
    local display = display.option_directory_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.option_directory_message, range, display)
  end

  return dissect.option_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Base Reference Number
size_of.base_reference_number = 8

-- Display: Base Reference Number
display.base_reference_number = function(value)
  return "Base Reference Number: "..value
end

-- Dissect: Base Reference Number
dissect.base_reference_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.base_reference_number)
  local value = range:uint64()
  local display = display.base_reference_number(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.base_reference_number, range, value, display)

  return offset + size_of.base_reference_number
end

-- Display: Base Reference Message
display.base_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Base Reference Message
dissect.base_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Base Reference Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.base_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Base Reference Message
dissect.base_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.base_reference_message then
    local range = buffer(offset, 12)
    local display = display.base_reference_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.base_reference_message, range, display)
  end

  return dissect.base_reference_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_code)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.event_code, range, value, display)

  return offset + size_of.event_code
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

  -- Event Code: 1 Byte Ascii String
  index = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local range = buffer(offset, 5)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Second
size_of.second = 4

-- Display: Second
display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
dissect.second = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second)
  local value = range:uint()
  local display = display.second(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.second, range, value, display)

  return offset + size_of.second
end

-- Display: Seconds Message
display.seconds_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seconds Message
dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index = dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
dissect.seconds_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seconds_message then
    local range = buffer(offset, 4)
    local display = display.seconds_message(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.seconds_message, range, display)
  end

  return dissect.seconds_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Seconds Message
  if code == "T" then
    return 4
  end
  -- Size of System Event Message
  if code == "S" then
    return 5
  end
  -- Size of Base Reference Message
  if code == "L" then
    return 12
  end
  -- Size of Option Directory Message
  if code == "R" then
    return 39
  end
  -- Size of Trading Action Message
  if code == "H" then
    return 9
  end
  -- Size of Security Open Message
  if code == "O" then
    return 9
  end
  -- Size of Add Order Message Short Form
  if code == "a" then
    return 21
  end
  -- Size of Add Order Message Long Form
  if code == "A" then
    return 21
  end
  -- Size of Add Quote Message Short Form
  if code == "j" then
    return 24
  end
  -- Size of Add Quote Message Long Form
  if code == "J" then
    return 28
  end
  -- Size of Single Side Executed Message
  if code == "E" then
    return 20
  end
  -- Size of Single Side Executed with Price Message
  if code == "C" then
    return 21
  end
  -- Size of Single Side Cancel Message
  if code == "X" then
    return 12
  end
  -- Size of Single Side Replace Message Short Form
  if code == "u" then
    return 16
  end
  -- Size of Single Side Replace Message Long Form
  if code == "U" then
    return 16
  end
  -- Size of Order Replace Message Short Form
  if code == "v" then
    return 20
  end
  -- Size of Single Side Replace Long Form Message
  if code == "V" then
    return 20
  end
  -- Size of Single Side Delete Message
  if code == "D" then
    return 8
  end
  -- Size of Single Side Update Message
  if code == "G" then
    return 13
  end
  -- Size of Quote Replace Short Form Message
  if code == "k" then
    return 28
  end
  -- Size of Quote Replace Long Form Message
  if code == "K" then
    return 32
  end
  -- Size of Quote Delete Message
  if code == "Y" then
    return 12
  end
  -- Size of Block Delete Message
  if code == "Z" then
    return size_of.block_delete_message(buffer, offset)
  end
  -- Size of Non Auction Options Trade Message
  if code == "P" then
    return 21
  end
  -- Size of Options Cross Trade Message
  if code == "Q" then
    return 21
  end
  -- Size of Broken Trade Order Execution Message
  if code == "B" then
    return 12
  end
  -- Size of Auction Notification Message
  if code == "I" then
    return 30
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Seconds Message
  if code == "T" then
    return dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if code == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Base Reference Message
  if code == "L" then
    return dissect.base_reference_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Directory Message
  if code == "R" then
    return dissect.option_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if code == "H" then
    return dissect.trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Open Message
  if code == "O" then
    return dissect.security_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Short Form
  if code == "a" then
    return dissect.add_order_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message Long Form
  if code == "A" then
    return dissect.add_order_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Short Form
  if code == "j" then
    return dissect.add_quote_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Message Long Form
  if code == "J" then
    return dissect.add_quote_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if code == "E" then
    return dissect.single_side_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed with Price Message
  if code == "C" then
    return dissect.single_side_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Cancel Message
  if code == "X" then
    return dissect.single_side_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Short Form
  if code == "u" then
    return dissect.single_side_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Message Long Form
  if code == "U" then
    return dissect.single_side_replace_message_long_form(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message Short Form
  if code == "v" then
    return dissect.order_replace_message_short_form(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if code == "V" then
    return dissect.single_side_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if code == "D" then
    return dissect.single_side_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if code == "G" then
    return dissect.single_side_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if code == "k" then
    return dissect.quote_replace_short_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if code == "K" then
    return dissect.quote_replace_long_form_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if code == "Y" then
    return dissect.quote_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Block Delete Message
  if code == "Z" then
    return dissect.block_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Auction Options Trade Message
  if code == "P" then
    return dissect.non_auction_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Cross Trade Message
  if code == "Q" then
    return dissect.options_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Order Execution Message
  if code == "B" then
    return dissect.broken_trade_order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if code == "I" then
    return dissect.auction_notification_message(buffer, offset, packet, parent)
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
  local element = parent:add(phlx_marketdepth_itch_v1_5.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "L" then
    return "Message Type: Base Reference Message (L)"
  end
  if value == "R" then
    return "Message Type: Option Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "O" then
    return "Message Type: Security Open Message (O)"
  end
  if value == "a" then
    return "Message Type: Add Order Message Short Form (a)"
  end
  if value == "A" then
    return "Message Type: Add Order Message Long Form (A)"
  end
  if value == "j" then
    return "Message Type: Add Quote Message Short Form (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Message Long Form (J)"
  end
  if value == "E" then
    return "Message Type: Single Side Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Single Side Executed with Price Message (C)"
  end
  if value == "X" then
    return "Message Type: Single Side Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Message Short Form (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Message Long Form (U)"
  end
  if value == "v" then
    return "Message Type: Order Replace Message Short Form (v)"
  end
  if value == "V" then
    return "Message Type: Single Side Replace Long Form Message (V)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Update Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Short Form Message (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Long Form Message (K)"
  end
  if value == "Y" then
    return "Message Type: Quote Delete Message (Y)"
  end
  if value == "Z" then
    return "Message Type: Block Delete Message (Z)"
  end
  if value == "P" then
    return "Message Type: Non Auction Options Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Options Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Order Execution Message (B)"
  end
  if value == "I" then
    return "Message Type: Auction Notification Message (I)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.length, range, value, display)

  return offset + size_of.length
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

  -- Message Type: 1 Byte Ascii String Enum with 27 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 27 branches
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
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 2

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(phlx_marketdepth_itch_v1_5.fields.session, range, value, display)

  return offset + size_of.session
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
    parent = parent:add(phlx_marketdepth_itch_v1_5.fields.packet_header, range, display)
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
function phlx_marketdepth_itch_v1_5.init()
end

-- Dissector for Phlx MarketDepth Itch 1.5
function phlx_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = phlx_marketdepth_itch_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(phlx_marketdepth_itch_v1_5, buffer(), phlx_marketdepth_itch_v1_5.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, phlx_marketdepth_itch_v1_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.phlx_marketdepth_itch_v1_5_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Phlx MarketDepth Itch 1.5
local function phlx_marketdepth_itch_v1_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.phlx_marketdepth_itch_v1_5_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = phlx_marketdepth_itch_v1_5
  phlx_marketdepth_itch_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Register Phlx MarketDepth Itch 1.5 Heuristic
phlx_marketdepth_itch_v1_5:register_heuristic("udp", phlx_marketdepth_itch_v1_5_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.5
-- Date: Wednesday, September 30, 2015
-- Script:
-- Source Version: 1.3.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
