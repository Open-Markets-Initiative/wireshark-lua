-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Titanium Equities DepthOfBook Pitch 1.15.13 Protocol
local omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13 = Proto("Cboe.Titanium.Equities.DepthOfBook.Pitch.v1.15.13.Lua", "Cboe Titanium Equities DepthOfBook Pitch 1.15.13")

-- Protocol table
local cboe_titanium_equities_depthofbook_pitch_v1_15_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Titanium Equities DepthOfBook Pitch 1.15.13 Fields
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_only_price_long_price_14 = ProtoField.new("Auction Only Price Long Price 14", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.auctiononlypricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_only_price_price_10 = ProtoField.new("Auction Only Price Price 10", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.auctiononlypriceprice10", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_type = ProtoField.new("Auction Type", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.auctiontype", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.buyshares", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.canceled_shares = ProtoField.new("Canceled Shares", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.canceledshares", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.customerindicator", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.debugpacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.display = ProtoField.new("Display", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.display", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.executedshares", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.execution_id = ProtoField.new("Execution Id", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.executionid", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.halt_status = ProtoField.new("Halt Status", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.haltstatus", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.indicative_price_long_price_14 = ProtoField.new("Indicative Price Long Price 14", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.indicativepricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.indicative_price_price_10 = ProtoField.new("Indicative Price Price 10", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.indicativepriceprice10", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.loginacceptedpacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.loginrejectedpacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.loginrequestpacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_id = ProtoField.new("Order Id", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.orderid", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.packet = ProtoField.new("Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.packet", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.packet_type = ProtoField.new("Packet Type", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.packettype", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.participant_id = ProtoField.new("Participant Id", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.participantid", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.password = ProtoField.new("Password", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.password", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.price_long_price_14 = ProtoField.new("Price Long Price 14", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.pricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.price_price_10 = ProtoField.new("Price Price 10", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.priceprice10", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reference_price_long_price_14 = ProtoField.new("Reference Price Long Price 14", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.referencepricelongprice14", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reference_price_price_10 = ProtoField.new("Reference Price Price 10", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.referencepriceprice10", ftypes.DOUBLE)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.regshoaction", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.rejectreasoncode", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.requestedsequencenumber", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.requested_session = ProtoField.new("Requested Session", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.requestedsession", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved = ProtoField.new("Reserved", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.reserved", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.reserved1", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.reserved2", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.retailpriceimprovement", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sellshares", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sequencenumber", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sequenceddatapacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sequencedmessageheader", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sequencedmessagetype", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.session = ProtoField.new("Session", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.session", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.shares_numeric_10 = ProtoField.new("Shares Numeric 10", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sharesnumeric10", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.shares_numeric_6 = ProtoField.new("Shares Numeric 6", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sharesnumeric6", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.sideindicator", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.souplf", ftypes.INT8)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.stock_symbol_printable_ascii_6 = ProtoField.new("Stock Symbol Printable Ascii 6", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.stocksymbolprintableascii6", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.stock_symbol_printable_ascii_8 = ProtoField.new("Stock Symbol Printable Ascii 8", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.stocksymbolprintableascii8", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.text = ProtoField.new("Text", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.text", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.timestamp = ProtoField.new("Timestamp", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.timestamp", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.unsequenceddatapacket", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.username = ProtoField.new("Username", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.username", ftypes.STRING)

-- Cboe Titanium Equities Pitch DepthOfBook 1.15.13 Application Messages
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_extended_message = ProtoField.new("Add Order Extended Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.addorderextendedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.addorderlongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.addordershortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.auctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.auctionupdatemessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.extended_auction_summary_message = ProtoField.new("Extended Auction Summary Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.extendedauctionsummarymessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.extended_auction_update_message = ProtoField.new("Extended Auction Update Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.extendedauctionupdatemessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.ordercancelmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.orderexecutedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.retailpriceimprovementmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.symbolclearmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.tradebreakmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.tradeextendedmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.tradelongmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.tradeshortmessage", ftypes.STRING)
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.titanium.equities.depthofbook.pitch.v1.15.13.tradingstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Titanium Equities DepthOfBook Pitch 1.15.13 Element Dissection Options
show.application_messages = true
show.debug_packet = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true

-- Register Cboe Titanium Equities DepthOfBook Pitch 1.15.13 Show Options
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")

-- Handle changed preferences
function omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_application_messages then
    show.application_messages = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_application_messages
    changed = true
  end
  if show.debug_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_debug_packet
    changed = true
  end
  if show.login_accepted_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_packet then
    show.packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_packet
    changed = true
  end
  if show.sequenced_data_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sequenced_message_header ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_sequenced_message_header
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.prefs.show_unsequenced_data_packet
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
-- Cboe Titanium Equities DepthOfBook Pitch 1.15.13 Fields
-----------------------------------------------------------------------

-- Auction Only Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14 = {}

-- Size: Auction Only Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.size = 14

-- Display: Auction Only Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.display = function(value)
  return "Auction Only Price Long Price 14: "..value
end

-- Dissect: Auction Only Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_only_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Auction Only Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10 = {}

-- Size: Auction Only Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.size = 10

-- Display: Auction Only Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.display = function(value)
  return "Auction Only Price Price 10: "..value
end

-- Dissect: Auction Only Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_only_price_price_10, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type = {}

-- Size: Auction Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size = 1

-- Display: Auction Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction Byx Only (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares = {}

-- Size: Buy Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.size = 10

-- Display: Buy Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares = {}

-- Size: Canceled Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.size = 6

-- Display: Canceled Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator = {}

-- Size: Customer Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.display = function(value)
  if value == "R" then
    return "Customer Indicator: Retail (R)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Display
cboe_titanium_equities_depthofbook_pitch_v1_15_13.display = {}

-- Size: Display
cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.size = 1

-- Display: Display
cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.display = function(value)
  return "Display: "..value
end

-- Dissect: Display
cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.display, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares = {}

-- Size: Executed Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.size = 6

-- Display: Executed Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id = {}

-- Size: Execution Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size = 12

-- Display: Execution Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Halt Status
cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status = {}

-- Size: Halt Status
cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.size = 1

-- Display: Halt Status
cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.display = function(value)
  if value == "A" then
    return "Halt Status: Accepting Orders For Queuing (A)"
  end
  if value == "H" then
    return "Halt Status: Halted (H)"
  end
  if value == "Q" then
    return "Halt Status: Quote Only Cboe Listings (Q)"
  end
  if value == "S" then
    return "Halt Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Halt Status: Trading (T)"
  end

  return "Halt Status: Unknown("..value..")"
end

-- Dissect: Halt Status
cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.halt_status, range, value, display)

  return offset + length, value
end

-- Indicative Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14 = {}

-- Size: Indicative Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.size = 14

-- Display: Indicative Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.display = function(value)
  return "Indicative Price Long Price 14: "..value
end

-- Dissect: Indicative Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.indicative_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Indicative Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10 = {}

-- Size: Indicative Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.size = 10

-- Display: Indicative Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.display = function(value)
  return "Indicative Price Price 10: "..value
end

-- Dissect: Indicative Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.indicative_price_price_10, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id = {}

-- Size: Order Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size = 12

-- Display: Order Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type = {}

-- Size: Packet Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.size = 1

-- Display: Packet Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id = {}

-- Size: Participant Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.size = 4

-- Display: Participant Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Password
cboe_titanium_equities_depthofbook_pitch_v1_15_13.password = {}

-- Size: Password
cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.size = 10

-- Display: Password
cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14 = {}

-- Size: Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.size = 14

-- Display: Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.display = function(value)
  return "Price Long Price 14: "..value
end

-- Dissect: Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.price_long_price_14, range, value, display)

  return offset + length, value
end

-- Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10 = {}

-- Size: Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size = 10

-- Display: Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.display = function(value)
  return "Price Price 10: "..value
end

-- Dissect: Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.price_price_10, range, value, display)

  return offset + length, value
end

-- Reference Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14 = {}

-- Size: Reference Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.size = 14

-- Display: Reference Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.display = function(value)
  return "Reference Price Long Price 14: "..value
end

-- Dissect: Reference Price Long Price 14
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reference_price_long_price_14, range, value, display)

  return offset + length, value
end

-- Reference Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10 = {}

-- Size: Reference Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.size = 10

-- Display: Reference Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.display = function(value)
  return "Reference Price Price 10: "..value
end

-- Dissect: Reference Price Price 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reference_price_price_10, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session = {}

-- Size: Requested Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.size = 10

-- Display: Requested Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved = {}

-- Size: Reserved
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.size = 1

-- Display: Reserved
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1 = {}

-- Size: Reserved 1
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.size = 1

-- Display: Reserved 1
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2 = {}

-- Size: Reserved 2
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.size = 1

-- Display: Reserved 2
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.display = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side Rpi (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side Rpi (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell Rpi (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares = {}

-- Size: Sell Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.size = 10

-- Display: Sell Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number = {}

-- Size: Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.size = 10

-- Display: Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.display = function(value)
  if value == "s" then
    return "Sequenced Message Type: Symbol Clear Message (s)"
  end
  if value == "A" then
    return "Sequenced Message Type: Add Order Short Message (A)"
  end
  if value == "d" then
    return "Sequenced Message Type: Add Order Long Message (d)"
  end
  if value == "1" then
    return "Sequenced Message Type: Add Order Extended Message (1)"
  end
  if value == "E" then
    return "Sequenced Message Type: Order Executed Message (E)"
  end
  if value == "X" then
    return "Sequenced Message Type: Order Cancel Message (X)"
  end
  if value == "P" then
    return "Sequenced Message Type: Trade Short Message (P)"
  end
  if value == "r" then
    return "Sequenced Message Type: Trade Long Message (r)"
  end
  if value == "2" then
    return "Sequenced Message Type: Trade Extended Message (2)"
  end
  if value == "B" then
    return "Sequenced Message Type: Trade Break Message (B)"
  end
  if value == "H" then
    return "Sequenced Message Type: Trading Status Message (H)"
  end
  if value == "I" then
    return "Sequenced Message Type: Auction Update Message (I)"
  end
  if value == "3" then
    return "Sequenced Message Type: Extended Auction Update Message (3)"
  end
  if value == "J" then
    return "Sequenced Message Type: Auction Summary Message (J)"
  end
  if value == "4" then
    return "Sequenced Message Type: Extended Auction Summary Message (4)"
  end
  if value == "R" then
    return "Sequenced Message Type: Retail Price Improvement Message (R)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.session = {}

-- Size: Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.size = 10

-- Display: Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.session, range, value, display)

  return offset + length, value
end

-- Shares Numeric 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10 = {}

-- Size: Shares Numeric 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.size = 10

-- Display: Shares Numeric 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.display = function(value)
  return "Shares Numeric 10: "..value
end

-- Dissect: Shares Numeric 10
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.shares_numeric_10, range, value, display)

  return offset + length, value
end

-- Shares Numeric 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6 = {}

-- Size: Shares Numeric 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size = 6

-- Display: Shares Numeric 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.display = function(value)
  return "Shares Numeric 6: "..value
end

-- Dissect: Shares Numeric 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.shares_numeric_6, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator = {}

-- Size: Side Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size = 1

-- Display: Side Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf = {}

-- Size: Soup Lf
cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.size = 1

-- Display: Soup Lf
cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6 = {}

-- Size: Stock Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.size = 6

-- Display: Stock Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.display = function(value)
  return "Stock Symbol Printable Ascii 6: "..value
end

-- Dissect: Stock Symbol Printable Ascii 6
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.stock_symbol_printable_ascii_6, range, value, display)

  return offset + length, value
end

-- Stock Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8 = {}

-- Size: Stock Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size = 8

-- Display: Stock Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.display = function(value)
  return "Stock Symbol Printable Ascii 8: "..value
end

-- Dissect: Stock Symbol Printable Ascii 8
cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.stock_symbol_printable_ascii_8, range, value, display)

  return offset + length, value
end

-- Text
cboe_titanium_equities_depthofbook_pitch_v1_15_13.text = {}

-- Size: Text
cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.size = 1

-- Display: Text
cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp = {}

-- Size: Timestamp
cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.size = 8

-- Display: Timestamp
cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Username
cboe_titanium_equities_depthofbook_pitch_v1_15_13.username = {}

-- Size: Username
cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.size = 6

-- Display: Username
cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe Titanium Equities DepthOfBook Pitch 1.15.13
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message
  index, unsequenced_message = cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet = {}

-- Size: Login Request Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.size

-- Display: Login Request Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_titanium_equities_depthofbook_pitch_v1_15_13.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_titanium_equities_depthofbook_pitch_v1_15_13.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_titanium_equities_depthofbook_pitch_v1_15_13.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alpha
  index, retail_price_improvement = cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message = {}

-- Size: Extended Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.size

-- Display: Extended Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long Price 14: Long Price
  index, price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.dissect(buffer, index, packet, parent)

  -- Shares Numeric 10: Numeric
  index, shares_numeric_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.extended_auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.size

-- Display: Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.dissect(buffer, index, packet, parent)

  -- Price Price 10: Price
  index, price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect(buffer, index, packet, parent)

  -- Shares Numeric 10: Numeric
  index, shares_numeric_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message = {}

-- Size: Extended Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.size

-- Display: Extended Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Long Price 14: Long Price
  index, reference_price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_long_price_14.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Long Price 14: Long Price
  index, indicative_price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_long_price_14.dissect(buffer, index, packet, parent)

  -- Auction Only Price Long Price 14: Long Price
  index, auction_only_price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_long_price_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.extended_auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message = {}

-- Size: Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.size

-- Display: Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price Price 10: Price
  index, reference_price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reference_price_price_10.dissect(buffer, index, packet, parent)

  -- Buy Shares: Numeric
  index, buy_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Numeric
  index, sell_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price Price 10: Price
  index, indicative_price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.indicative_price_price_10.dissect(buffer, index, packet, parent)

  -- Auction Only Price Price 10: Price
  index, auction_only_price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_only_price_price_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message = {}

-- Size: Trading Status Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.size

-- Display: Trading Status Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Halt Status: Alpha
  index, halt_status = cboe_titanium_equities_depthofbook_pitch_v1_15_13.halt_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Numeric
  index, reg_sho_action = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alpha
  index, reserved_1 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: Alpha
  index, reserved_2 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message = {}

-- Size: Trade Break Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size

-- Display: Trade Break Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message = {}

-- Size: Trade Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size

-- Display: Trade Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Long Price 14: Long Price
  index, price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message = {}

-- Size: Trade Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size

-- Display: Trade Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Price 10: Price
  index, price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message = {}

-- Size: Trade Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size

-- Display: Trade Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 6: Printable ASCII
  index, stock_symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Price 10: Price
  index, price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message = {}

-- Size: Order Cancel Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.size

-- Display: Order Cancel Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Shares: Numeric
  index, canceled_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_cancel_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message = {}

-- Size: Order Executed Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.size

-- Display: Order Executed Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Numeric
  index, executed_shares = cboe_titanium_equities_depthofbook_pitch_v1_15_13.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message = {}

-- Size: Add Order Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.size

-- Display: Add Order Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Long Price 14: Long Price
  index, price_long_price_14 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_long_price_14.dissect(buffer, index, packet, parent)

  -- Display: Alpha
  index, display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.display.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Extended Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_extended_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.size

-- Display: Add Order Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  -- Price Price 10: Price
  index, price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.size

-- Display: Add Order Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Base 36 Numeric
  index, order_id = cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alpha
  index, side_indicator = cboe_titanium_equities_depthofbook_pitch_v1_15_13.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Numeric 6: Numeric
  index, shares_numeric_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.shares_numeric_6.dissect(buffer, index, packet, parent)

  -- Stock Symbol Printable Ascii 6: Printable ASCII
  index, stock_symbol_printable_ascii_6 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_6.dissect(buffer, index, packet, parent)

  -- Price Price 10: Price
  index, price_price_10 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.price_price_10.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message = {}

-- Size: Symbol Clear Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.size

-- Display: Symbol Clear Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Symbol Printable Ascii 8: Printable ASCII
  index, stock_symbol_printable_ascii_8 = cboe_titanium_equities_depthofbook_pitch_v1_15_13.stock_symbol_printable_ascii_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.symbol_clear_message, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Symbol Clear Message
  if sequenced_message_type == "s" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if sequenced_message_type == "A" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if sequenced_message_type == "d" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Extended Message
  if sequenced_message_type == "1" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.add_order_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if sequenced_message_type == "E" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if sequenced_message_type == "X" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if sequenced_message_type == "P" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if sequenced_message_type == "r" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if sequenced_message_type == "2" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if sequenced_message_type == "B" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if sequenced_message_type == "H" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if sequenced_message_type == "I" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Auction Update Message
  if sequenced_message_type == "3" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if sequenced_message_type == "J" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Extended Auction Summary Message
  if sequenced_message_type == "4" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.extended_auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if sequenced_message_type == "R" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_titanium_equities_depthofbook_pitch_v1_15_13.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 16 branches
  index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_titanium_equities_depthofbook_pitch_v1_15_13.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.size + 
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.size

-- Display: Login Accepted Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_titanium_equities_depthofbook_pitch_v1_15_13.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet = {}

-- Size: Debug Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.size =
  cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.size

-- Display: Debug Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_titanium_equities_depthofbook_pitch_v1_15_13.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.fields.debug_packet, buffer(offset, 0))
    local index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titanium_equities_depthofbook_pitch_v1_15_13.payload = {}

-- Dissect: Payload
cboe_titanium_equities_depthofbook_pitch_v1_15_13.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_titanium_equities_depthofbook_pitch_v1_15_13.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet = {}

-- Dissect Packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_titanium_equities_depthofbook_pitch_v1_15_13.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.init()
end

-- Dissector for Cboe Titanium Equities DepthOfBook Pitch 1.15.13
function omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13, buffer(), omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.description, "("..buffer:len().." Bytes)")
  return cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet.requiredsize = function(buffer)

  return true
end

-- Verify Soup Lf Field
cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(624, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe Titanium Equities DepthOfBook Pitch 1.15.13
local function omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titanium_equities_depthofbook_pitch_v1_15_13.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_titanium_equities_depthofbook_pitch_v1_15_13.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13
  omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Titanium Equities DepthOfBook Pitch 1.15.13
omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13:register_heuristic("tcp", omi_cboe_titanium_equities_depthofbook_pitch_v1_15_13_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.15.13
--   Date: Monday, April 21, 2025
--   Specification: Cboe_US_Equities_TCP_PITCH_Specification.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
