-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Equities TotalView Itch 4.1 Protocol
local nasdaq_equities_totalview_itch_v4_1 = Proto("Nasdaq.Equities.TotalView.Itch.v4.1.Lua", "Nasdaq Equities TotalView Itch 4.1")

-- Component Tables
local show = {}
local format = {}
local nasdaq_equities_totalview_itch_v4_1_display = {}
local nasdaq_equities_totalview_itch_v4_1_dissect = {}
local nasdaq_equities_totalview_itch_v4_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Equities TotalView Itch 4.1 Fields
nasdaq_equities_totalview_itch_v4_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.equities.totalview.itch.v4.1.addordermessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.add_order_with_mpid_message = ProtoField.new("Add Order With Mpid Message", "nasdaq.equities.totalview.itch.v4.1.addorderwithmpidmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.attribution = ProtoField.new("Attribution", "nasdaq.equities.totalview.itch.v4.1.attribution", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.equities.totalview.itch.v4.1.brokentrademessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.equities.totalview.itch.v4.1.canceledshares", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.count = ProtoField.new("Count", "nasdaq.equities.totalview.itch.v4.1.count", ftypes.UINT16)
nasdaq_equities_totalview_itch_v4_1.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.equities.totalview.itch.v4.1.crossprice", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.equities.totalview.itch.v4.1.crossshares", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.equities.totalview.itch.v4.1.crosstrademessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.equities.totalview.itch.v4.1.crosstype", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.equities.totalview.itch.v4.1.currentreferenceprice", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.equities.totalview.itch.v4.1.eventcode", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.equities.totalview.itch.v4.1.executedshares", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.equities.totalview.itch.v4.1.executionprice", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.far_price = ProtoField.new("Far Price", "nasdaq.equities.totalview.itch.v4.1.farprice", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.equities.totalview.itch.v4.1.financialstatusindicator", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.equities.totalview.itch.v4.1.imbalancedirection", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.equities.totalview.itch.v4.1.imbalanceshares", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.equities.totalview.itch.v4.1.interestflag", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.length = ProtoField.new("Length", "nasdaq.equities.totalview.itch.v4.1.length", ftypes.UINT16)
nasdaq_equities_totalview_itch_v4_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.equities.totalview.itch.v4.1.marketcategory", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.equities.totalview.itch.v4.1.marketmakermode", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.equities.totalview.itch.v4.1.marketparticipantpositionmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.equities.totalview.itch.v4.1.marketparticipantstate", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.equities.totalview.itch.v4.1.matchnumber", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.message = ProtoField.new("Message", "nasdaq.equities.totalview.itch.v4.1.message", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.equities.totalview.itch.v4.1.messageheader", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.equities.totalview.itch.v4.1.messagetype", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.mpid = ProtoField.new("Mpid", "nasdaq.equities.totalview.itch.v4.1.mpid", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.near_price = ProtoField.new("Near Price", "nasdaq.equities.totalview.itch.v4.1.nearprice", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.equities.totalview.itch.v4.1.netorderimbalanceindicatormessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.equities.totalview.itch.v4.1.neworderreferencenumber", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.equities.totalview.itch.v4.1.ordercancelmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.equities.totalview.itch.v4.1.orderdeletemessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.equities.totalview.itch.v4.1.orderexecutedmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.equities.totalview.itch.v4.1.orderexecutedwithpricemessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.equities.totalview.itch.v4.1.orderreferencenumber", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.equities.totalview.itch.v4.1.orderreplacemessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.equities.totalview.itch.v4.1.originalorderreferencenumber", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.packet = ProtoField.new("Packet", "nasdaq.equities.totalview.itch.v4.1.packet", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.equities.totalview.itch.v4.1.packetheader", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.equities.totalview.itch.v4.1.pairedshares", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.payload = ProtoField.new("Payload", "nasdaq.equities.totalview.itch.v4.1.payload", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.price = ProtoField.new("Price", "nasdaq.equities.totalview.itch.v4.1.price", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.equities.totalview.itch.v4.1.pricevariationindicator", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.equities.totalview.itch.v4.1.primarymarketmaker", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.printable = ProtoField.new("Printable", "nasdaq.equities.totalview.itch.v4.1.printable", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.equities.totalview.itch.v4.1.regshoaction", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.equities.totalview.itch.v4.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.equities.totalview.itch.v4.1.retailpriceimprovementindicatormessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.second = ProtoField.new("Second", "nasdaq.equities.totalview.itch.v4.1.second", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.sequence = ProtoField.new("Sequence", "nasdaq.equities.totalview.itch.v4.1.sequence", ftypes.UINT64)
nasdaq_equities_totalview_itch_v4_1.fields.session = ProtoField.new("Session", "nasdaq.equities.totalview.itch.v4.1.session", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.shares = ProtoField.new("Shares", "nasdaq.equities.totalview.itch.v4.1.shares", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.side = ProtoField.new("Side", "nasdaq.equities.totalview.itch.v4.1.side", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.stock = ProtoField.new("Stock", "nasdaq.equities.totalview.itch.v4.1.stock", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.equities.totalview.itch.v4.1.stockdirectorymessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.equities.totalview.itch.v4.1.systemeventmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.time_stamp_message = ProtoField.new("Time Stamp Message", "nasdaq.equities.totalview.itch.v4.1.timestampmessage", ftypes.STRING)
nasdaq_equities_totalview_itch_v4_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.equities.totalview.itch.v4.1.timestamp", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "nasdaq.equities.totalview.itch.v4.1.timestampnanoseconds", ftypes.UINT32)
nasdaq_equities_totalview_itch_v4_1.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.equities.totalview.itch.v4.1.trademessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Equities TotalView Itch 4.1 Element Dissection Options
show.add_order_message = true
show.add_order_with_mpid_message = true
show.broken_trade_message = true
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

-- Register Nasdaq Equities TotalView Itch 4.1 Show Options
nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message = Pref.bool("Show Add Order With Mpid Message", show.add_order_with_mpid_message, "Parse and add Add Order With Mpid Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message = Pref.bool("Show Retail Price Improvement Indicator Message", show.retail_price_improvement_indicator_message, "Parse and add Retail Price Improvement Indicator Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_time_stamp_message = Pref.bool("Show Time Stamp Message", show.time_stamp_message, "Parse and add Time Stamp Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
nasdaq_equities_totalview_itch_v4_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_equities_totalview_itch_v4_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_message then
    show.add_order_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_message
    changed = true
  end
  if show.add_order_with_mpid_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message then
    show.add_order_with_mpid_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message
    changed = true
  end
  if show.broken_trade_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_broken_trade_message then
    show.broken_trade_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_cross_trade_message then
    show.cross_trade_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_cross_trade_message
    changed = true
  end
  if show.market_participant_position_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_market_participant_position_message then
    show.market_participant_position_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_message then
    show.message = nasdaq_equities_totalview_itch_v4_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_message_header then
    show.message_header = nasdaq_equities_totalview_itch_v4_1.prefs.show_message_header
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_order_delete_message then
    show.order_delete_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_message then
    show.order_executed_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_order_replace_message then
    show.order_replace_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_packet then
    show.packet = nasdaq_equities_totalview_itch_v4_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_packet_header then
    show.packet_header = nasdaq_equities_totalview_itch_v4_1.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.retail_price_improvement_indicator_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message then
    show.retail_price_improvement_indicator_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_stock_directory_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_system_event_message then
    show.system_event_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_system_event_message
    changed = true
  end
  if show.time_stamp_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_time_stamp_message then
    show.time_stamp_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_time_stamp_message
    changed = true
  end
  if show.trade_message ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_trade_message then
    show.trade_message = nasdaq_equities_totalview_itch_v4_1.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= nasdaq_equities_totalview_itch_v4_1.prefs.show_payload then
    show.payload = nasdaq_equities_totalview_itch_v4_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Equities TotalView Itch 4.1
-----------------------------------------------------------------------

-- Size: Interest Flag
nasdaq_equities_totalview_itch_v4_1_size_of.interest_flag = 1

-- Display: Interest Flag
nasdaq_equities_totalview_itch_v4_1_display.interest_flag = function(value)
  if value == "B" then
    return "Interest Flag: Rpi Buy (B)"
  end
  if value == "S" then
    return "Interest Flag: Rpi Sell (S)"
  end
  if value == "A" then
    return "Interest Flag: Rpi Both (A)"
  end
  if value == "N" then
    return "Interest Flag: No Rpi (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_equities_totalview_itch_v4_1_dissect.interest_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.interest_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.interest_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_equities_totalview_itch_v4_1_size_of.stock = 8

-- Display: Stock
nasdaq_equities_totalview_itch_v4_1_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_equities_totalview_itch_v4_1_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.stock
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_equities_totalview_itch_v4_1_size_of.timestamp = 4

-- Display: Timestamp
nasdaq_equities_totalview_itch_v4_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_equities_totalview_itch_v4_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Price Improvement Indicator Message
nasdaq_equities_totalview_itch_v4_1_size_of.retail_price_improvement_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.interest_flag

  return index
end

-- Display: Retail Price Improvement Indicator Message
nasdaq_equities_totalview_itch_v4_1_display.retail_price_improvement_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.retail_price_improvement_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index, interest_flag = nasdaq_equities_totalview_itch_v4_1_dissect.interest_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.retail_price_improvement_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_improvement_indicator_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.retail_price_improvement_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.retail_price_improvement_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.retail_price_improvement_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Variation Indicator
nasdaq_equities_totalview_itch_v4_1_size_of.price_variation_indicator = 1

-- Display: Price Variation Indicator
nasdaq_equities_totalview_itch_v4_1_display.price_variation_indicator = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less (L)"
  end
  if value == "1" then
    return "Price Variation Indicator: 1 To 199 (1)"
  end
  if value == "2" then
    return "Price Variation Indicator: 2 To 299 (2)"
  end
  if value == "3" then
    return "Price Variation Indicator: 3 To 399 (3)"
  end
  if value == "4" then
    return "Price Variation Indicator: 4 To 499 (4)"
  end
  if value == "5" then
    return "Price Variation Indicator: 5 To 599 (5)"
  end
  if value == "6" then
    return "Price Variation Indicator: 6 To 699 (6)"
  end
  if value == "7" then
    return "Price Variation Indicator: 7 To 799 (7)"
  end
  if value == "8" then
    return "Price Variation Indicator: 8 To 899 (8)"
  end
  if value == "9" then
    return "Price Variation Indicator: 9 To 999 (9)"
  end
  if value == "A" then
    return "Price Variation Indicator: 10 To 1999 (A)"
  end
  if value == "B" then
    return "Price Variation Indicator: 20 To 2999 (B)"
  end
  if value == "C" then
    return "Price Variation Indicator: 30 Or Greater (C)"
  end
  if value == " " then
    return "Price Variation Indicator: No Calculation (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_equities_totalview_itch_v4_1_dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.price_variation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
nasdaq_equities_totalview_itch_v4_1_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_equities_totalview_itch_v4_1_display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "C" then
    return "Cross Type: Closing (C)"
  end
  if value == "H" then
    return "Cross Type: Cross For Ipo And Halted (H)"
  end
  if value == "I" then
    return "Cross Type: Nasdaq Cross Network (I)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_equities_totalview_itch_v4_1_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Current Reference Price
nasdaq_equities_totalview_itch_v4_1_size_of.current_reference_price = 4

-- Display: Current Reference Price
nasdaq_equities_totalview_itch_v4_1_display.current_reference_price = function(value)
  return "Current Reference Price: "..value
end

-- Dissect: Current Reference Price
nasdaq_equities_totalview_itch_v4_1_dissect.current_reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.current_reference_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.current_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Near Price
nasdaq_equities_totalview_itch_v4_1_size_of.near_price = 4

-- Display: Near Price
nasdaq_equities_totalview_itch_v4_1_display.near_price = function(value)
  return "Near Price: "..value
end

-- Dissect: Near Price
nasdaq_equities_totalview_itch_v4_1_dissect.near_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.near_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.near_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.near_price, range, value, display)

  return offset + length, value
end

-- Size: Far Price
nasdaq_equities_totalview_itch_v4_1_size_of.far_price = 4

-- Display: Far Price
nasdaq_equities_totalview_itch_v4_1_display.far_price = function(value)
  return "Far Price: "..value
end

-- Dissect: Far Price
nasdaq_equities_totalview_itch_v4_1_dissect.far_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.far_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.far_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_equities_totalview_itch_v4_1_display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_equities_totalview_itch_v4_1_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Shares
nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_shares = 8

-- Display: Imbalance Shares
nasdaq_equities_totalview_itch_v4_1_display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_equities_totalview_itch_v4_1_dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Size: Paired Shares
nasdaq_equities_totalview_itch_v4_1_size_of.paired_shares = 8

-- Display: Paired Shares
nasdaq_equities_totalview_itch_v4_1_display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_equities_totalview_itch_v4_1_dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.paired_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Net Order Imbalance Indicator Message
nasdaq_equities_totalview_itch_v4_1_size_of.net_order_imbalance_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.paired_shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.imbalance_direction

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.far_price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.near_price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.current_reference_price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.cross_type

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.price_variation_indicator

  return index
end

-- Display: Net Order Imbalance Indicator Message
nasdaq_equities_totalview_itch_v4_1_display.net_order_imbalance_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.net_order_imbalance_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_equities_totalview_itch_v4_1_dissect.paired_shares(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_equities_totalview_itch_v4_1_dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_equities_totalview_itch_v4_1_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_equities_totalview_itch_v4_1_dissect.far_price(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_equities_totalview_itch_v4_1_dissect.near_price(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_equities_totalview_itch_v4_1_dissect.current_reference_price(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_equities_totalview_itch_v4_1_dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_equities_totalview_itch_v4_1_dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.net_order_imbalance_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_order_imbalance_indicator_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.net_order_imbalance_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.net_order_imbalance_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
nasdaq_equities_totalview_itch_v4_1_size_of.match_number = 8

-- Display: Match Number
nasdaq_equities_totalview_itch_v4_1_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_equities_totalview_itch_v4_1_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Message
nasdaq_equities_totalview_itch_v4_1_size_of.broken_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.match_number

  return index
end

-- Display: Broken Trade Message
nasdaq_equities_totalview_itch_v4_1_display.broken_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.broken_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_totalview_itch_v4_1_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.broken_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.broken_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.broken_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.broken_trade_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.broken_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Cross Price
nasdaq_equities_totalview_itch_v4_1_size_of.cross_price = 4

-- Display: Cross Price
nasdaq_equities_totalview_itch_v4_1_display.cross_price = function(value)
  return "Cross Price: "..value
end

-- Dissect: Cross Price
nasdaq_equities_totalview_itch_v4_1_dissect.cross_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.cross_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.cross_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Size: Cross Shares
nasdaq_equities_totalview_itch_v4_1_size_of.cross_shares = 8

-- Display: Cross Shares
nasdaq_equities_totalview_itch_v4_1_display.cross_shares = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_equities_totalview_itch_v4_1_dissect.cross_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.cross_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.cross_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
nasdaq_equities_totalview_itch_v4_1_size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.cross_shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.cross_price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.match_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.cross_type

  return index
end

-- Display: Cross Trade Message
nasdaq_equities_totalview_itch_v4_1_display.cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_equities_totalview_itch_v4_1_dissect.cross_shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_equities_totalview_itch_v4_1_dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_totalview_itch_v4_1_dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_equities_totalview_itch_v4_1_dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_trade_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.cross_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.cross_trade_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
nasdaq_equities_totalview_itch_v4_1_size_of.price = 4

-- Display: Price
nasdaq_equities_totalview_itch_v4_1_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_equities_totalview_itch_v4_1_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Shares
nasdaq_equities_totalview_itch_v4_1_size_of.shares = 4

-- Display: Shares
nasdaq_equities_totalview_itch_v4_1_display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_equities_totalview_itch_v4_1_dissect.shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.shares, range, value, display)

  return offset + length, value
end

-- Size: Side
nasdaq_equities_totalview_itch_v4_1_size_of.side = 1

-- Display: Side
nasdaq_equities_totalview_itch_v4_1_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_equities_totalview_itch_v4_1_dissect.side = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number
nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number = 8

-- Display: Order Reference Number
nasdaq_equities_totalview_itch_v4_1_display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
nasdaq_equities_totalview_itch_v4_1_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.side

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.match_number

  return index
end

-- Display: Trade Message
nasdaq_equities_totalview_itch_v4_1_display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_equities_totalview_itch_v4_1_dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_equities_totalview_itch_v4_1_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_equities_totalview_itch_v4_1_dissect.price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_totalview_itch_v4_1_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_equities_totalview_itch_v4_1_dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.trade_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: New Order Reference Number
nasdaq_equities_totalview_itch_v4_1_size_of.new_order_reference_number = 8

-- Display: New Order Reference Number
nasdaq_equities_totalview_itch_v4_1_display.new_order_reference_number = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_equities_totalview_itch_v4_1_dissect.new_order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.new_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.new_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Original Order Reference Number
nasdaq_equities_totalview_itch_v4_1_size_of.original_order_reference_number = 8

-- Display: Original Order Reference Number
nasdaq_equities_totalview_itch_v4_1_display.original_order_reference_number = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_equities_totalview_itch_v4_1_dissect.original_order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.original_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.original_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Timestamp Nanoseconds
nasdaq_equities_totalview_itch_v4_1_size_of.timestamp_nanoseconds = 4

-- Display: Timestamp Nanoseconds
nasdaq_equities_totalview_itch_v4_1_display.timestamp_nanoseconds = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
nasdaq_equities_totalview_itch_v4_1_dissect.timestamp_nanoseconds = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.timestamp_nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.timestamp_nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message
nasdaq_equities_totalview_itch_v4_1_size_of.order_replace_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp_nanoseconds

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.original_order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.new_order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.price

  return index
end

-- Display: Order Replace Message
nasdaq_equities_totalview_itch_v4_1_display.order_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.original_order_reference_number(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.new_order_reference_number(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_equities_totalview_itch_v4_1_dissect.shares(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_equities_totalview_itch_v4_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.order_replace_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_replace_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.order_replace_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Delete Message
nasdaq_equities_totalview_itch_v4_1_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  return index
end

-- Display: Order Delete Message
nasdaq_equities_totalview_itch_v4_1_display.order_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.order_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_delete_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.order_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Shares
nasdaq_equities_totalview_itch_v4_1_size_of.canceled_shares = 4

-- Display: Canceled Shares
nasdaq_equities_totalview_itch_v4_1_display.canceled_shares = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_equities_totalview_itch_v4_1_dissect.canceled_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.canceled_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.canceled_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Message
nasdaq_equities_totalview_itch_v4_1_size_of.order_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.canceled_shares

  return index
end

-- Display: Order Cancel Message
nasdaq_equities_totalview_itch_v4_1_display.order_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_equities_totalview_itch_v4_1_dissect.canceled_shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.order_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_cancel_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.order_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Price
nasdaq_equities_totalview_itch_v4_1_size_of.execution_price = 4

-- Display: Execution Price
nasdaq_equities_totalview_itch_v4_1_display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
nasdaq_equities_totalview_itch_v4_1_dissect.execution_price = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.execution_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Size: Printable
nasdaq_equities_totalview_itch_v4_1_size_of.printable = 1

-- Display: Printable
nasdaq_equities_totalview_itch_v4_1_display.printable = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_equities_totalview_itch_v4_1_dissect.printable = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
nasdaq_equities_totalview_itch_v4_1_size_of.executed_shares = 4

-- Display: Executed Shares
nasdaq_equities_totalview_itch_v4_1_display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_equities_totalview_itch_v4_1_dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.executed_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Message
nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.executed_shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.match_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.printable

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.execution_price

  return index
end

-- Display: Order Executed With Price Message
nasdaq_equities_totalview_itch_v4_1_display.order_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_equities_totalview_itch_v4_1_dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_totalview_itch_v4_1_dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_equities_totalview_itch_v4_1_dissect.printable(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_equities_totalview_itch_v4_1_dissect.execution_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_with_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.order_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_executed_with_price_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.executed_shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.match_number

  return index
end

-- Display: Order Executed Message
nasdaq_equities_totalview_itch_v4_1_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_equities_totalview_itch_v4_1_dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_equities_totalview_itch_v4_1_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.order_executed_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Attribution
nasdaq_equities_totalview_itch_v4_1_size_of.attribution = 4

-- Display: Attribution
nasdaq_equities_totalview_itch_v4_1_display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_equities_totalview_itch_v4_1_dissect.attribution = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.attribution
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.attribution(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.attribution, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order With Mpid Message
nasdaq_equities_totalview_itch_v4_1_size_of.add_order_with_mpid_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.side

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.price

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.attribution

  return index
end

-- Display: Add Order With Mpid Message
nasdaq_equities_totalview_itch_v4_1_display.add_order_with_mpid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order With Mpid Message
nasdaq_equities_totalview_itch_v4_1_dissect.add_order_with_mpid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_equities_totalview_itch_v4_1_dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_equities_totalview_itch_v4_1_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_equities_totalview_itch_v4_1_dissect.price(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_equities_totalview_itch_v4_1_dissect.attribution(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Message
nasdaq_equities_totalview_itch_v4_1_dissect.add_order_with_mpid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_with_mpid_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.add_order_with_mpid_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.add_order_with_mpid_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.add_order_with_mpid_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.add_order_with_mpid_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Message
nasdaq_equities_totalview_itch_v4_1_size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.order_reference_number

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.side

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.shares

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.price

  return index
end

-- Display: Add Order Message
nasdaq_equities_totalview_itch_v4_1_display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_equities_totalview_itch_v4_1_dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_equities_totalview_itch_v4_1_dissect.order_reference_number(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_equities_totalview_itch_v4_1_dissect.side(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_equities_totalview_itch_v4_1_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_equities_totalview_itch_v4_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_equities_totalview_itch_v4_1_dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.add_order_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.add_order_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Participant State
nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_state = 1

-- Display: Market Participant State
nasdaq_equities_totalview_itch_v4_1_display.market_participant_state = function(value)
  if value == "A" then
    return "Market Participant State: Active (A)"
  end
  if value == "E" then
    return "Market Participant State: Excused Withdrawn (E)"
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
nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_state = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.market_participant_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Size: Market Maker Mode
nasdaq_equities_totalview_itch_v4_1_size_of.market_maker_mode = 1

-- Display: Market Maker Mode
nasdaq_equities_totalview_itch_v4_1_display.market_maker_mode = function(value)
  if value == "N" then
    return "Market Maker Mode: Normal (N)"
  end
  if value == "P" then
    return "Market Maker Mode: Passive (P)"
  end
  if value == "S" then
    return "Market Maker Mode: Syndicate (S)"
  end
  if value == "L" then
    return "Market Maker Mode: Penalty (L)"
  end

  return "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
nasdaq_equities_totalview_itch_v4_1_dissect.market_maker_mode = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.market_maker_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.market_maker_mode(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Size: Primary Market Maker
nasdaq_equities_totalview_itch_v4_1_size_of.primary_market_maker = 1

-- Display: Primary Market Maker
nasdaq_equities_totalview_itch_v4_1_display.primary_market_maker = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Nonprimary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_equities_totalview_itch_v4_1_dissect.primary_market_maker = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.primary_market_maker
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.primary_market_maker(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Size: Mpid
nasdaq_equities_totalview_itch_v4_1_size_of.mpid = 4

-- Display: Mpid
nasdaq_equities_totalview_itch_v4_1_display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_equities_totalview_itch_v4_1_dissect.mpid = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Participant Position Message
nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_position_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.mpid

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.primary_market_maker

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.market_maker_mode

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_state

  return index
end

-- Display: Market Participant Position Message
nasdaq_equities_totalview_itch_v4_1_display.market_participant_position_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_position_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_equities_totalview_itch_v4_1_dissect.mpid(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_equities_totalview_itch_v4_1_dissect.primary_market_maker(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 4 values
  index, market_maker_mode = nasdaq_equities_totalview_itch_v4_1_dissect.market_maker_mode(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_position_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_participant_position_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_position_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.market_participant_position_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.market_participant_position_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_position_message_fields(buffer, offset, packet, parent)
end

-- Size: Reg Sho Action
nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_equities_totalview_itch_v4_1_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_equities_totalview_itch_v4_1_display.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Financial Status Indicator
nasdaq_equities_totalview_itch_v4_1_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_equities_totalview_itch_v4_1_display.financial_status_indicator = function(value)
  if value == "D" then
    return "Financial Status Indicator: Delinquent (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Deficient (E)"
  end
  if value == "Q" then
    return "Financial Status Indicator: Bankrupt (Q)"
  end
  if value == "S" then
    return "Financial Status Indicator: Suspended (S)"
  end
  if value == "G" then
    return "Financial Status Indicator: Deficient And Bankrupt (G)"
  end
  if value == "H" then
    return "Financial Status Indicator: Deficient And Delinquent (H)"
  end
  if value == "J" then
    return "Financial Status Indicator: Delinquent And Bankrupt (J)"
  end
  if value == "K" then
    return "Financial Status Indicator: Deficient Delinquent And Bankrupt (K)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_equities_totalview_itch_v4_1_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_equities_totalview_itch_v4_1_size_of.market_category = 1

-- Display: Market Category
nasdaq_equities_totalview_itch_v4_1_display.market_category = function(value)
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Amex (A)"
  end
  if value == "P" then
    return "Market Category: Arca (P)"
  end
  if value == "Q" then
    return "Market Category: Nasdaq Gsm (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Gm (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Cm (S)"
  end
  if value == "Z" then
    return "Market Category: Bats (Z)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_equities_totalview_itch_v4_1_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_equities_totalview_itch_v4_1_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.stock

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.market_category

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.financial_status_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_equities_totalview_itch_v4_1_display.stock_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_equities_totalview_itch_v4_1_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_equities_totalview_itch_v4_1_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 7 values
  index, market_category = nasdaq_equities_totalview_itch_v4_1_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 8 values
  index, financial_status_indicator = nasdaq_equities_totalview_itch_v4_1_dissect.financial_status_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_equities_totalview_itch_v4_1_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_directory_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.stock_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.stock_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.stock_directory_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
nasdaq_equities_totalview_itch_v4_1_size_of.event_code = 1

-- Display: Event Code
nasdaq_equities_totalview_itch_v4_1_display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Message (C)"
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
nasdaq_equities_totalview_itch_v4_1_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_equities_totalview_itch_v4_1_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.timestamp

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_equities_totalview_itch_v4_1_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_equities_totalview_itch_v4_1_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_equities_totalview_itch_v4_1_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 9 values
  index, event_code = nasdaq_equities_totalview_itch_v4_1_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_equities_totalview_itch_v4_1_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.system_event_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Second
nasdaq_equities_totalview_itch_v4_1_size_of.second = 4

-- Display: Second
nasdaq_equities_totalview_itch_v4_1_display.second = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_equities_totalview_itch_v4_1_dissect.second = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.second
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.second(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.second, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Stamp Message
nasdaq_equities_totalview_itch_v4_1_size_of.time_stamp_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.second

  return index
end

-- Display: Time Stamp Message
nasdaq_equities_totalview_itch_v4_1_display.time_stamp_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Stamp Message
nasdaq_equities_totalview_itch_v4_1_dissect.time_stamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = nasdaq_equities_totalview_itch_v4_1_dissect.second(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Stamp Message
nasdaq_equities_totalview_itch_v4_1_dissect.time_stamp_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_stamp_message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.time_stamp_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.time_stamp_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.time_stamp_message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.time_stamp_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_equities_totalview_itch_v4_1_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Stamp Message
  if message_type == "T" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.time_stamp_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.market_participant_position_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "A" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.add_order_message(buffer, offset)
  end
  -- Size of Add Order With Mpid Message
  if message_type == "F" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.add_order_with_mpid_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.order_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.order_cancel_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.order_replace_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "P" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.trade_message(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.broken_trade_message(buffer, offset)
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.net_order_imbalance_indicator_message(buffer, offset)
  end
  -- Size of Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_equities_totalview_itch_v4_1_size_of.retail_price_improvement_indicator_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_equities_totalview_itch_v4_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_equities_totalview_itch_v4_1_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Stamp Message
  if message_type == "T" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.time_stamp_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.market_participant_position_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Message
  if message_type == "F" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.add_order_with_mpid_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.broken_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.net_order_imbalance_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_equities_totalview_itch_v4_1_dissect.retail_price_improvement_indicator_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_equities_totalview_itch_v4_1_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_equities_totalview_itch_v4_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_equities_totalview_itch_v4_1_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_equities_totalview_itch_v4_1_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.payload, range, display)

  return nasdaq_equities_totalview_itch_v4_1_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_equities_totalview_itch_v4_1_size_of.message_type = 1

-- Display: Message Type
nasdaq_equities_totalview_itch_v4_1_display.message_type = function(value)
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
    return "Message Type: Add Order Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order With Mpid Message (F)"
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
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
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
nasdaq_equities_totalview_itch_v4_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_equities_totalview_itch_v4_1_size_of.length = 2

-- Display: Length
nasdaq_equities_totalview_itch_v4_1_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_equities_totalview_itch_v4_1_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_equities_totalview_itch_v4_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.length

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_equities_totalview_itch_v4_1_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_equities_totalview_itch_v4_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_equities_totalview_itch_v4_1_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 17 values
  index, message_type = nasdaq_equities_totalview_itch_v4_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_equities_totalview_itch_v4_1_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.message_header, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
nasdaq_equities_totalview_itch_v4_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nasdaq_equities_totalview_itch_v4_1_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_equities_totalview_itch_v4_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_equities_totalview_itch_v4_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 17 branches
  index = nasdaq_equities_totalview_itch_v4_1_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_equities_totalview_itch_v4_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.message, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
nasdaq_equities_totalview_itch_v4_1_size_of.count = 2

-- Display: Count
nasdaq_equities_totalview_itch_v4_1_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_equities_totalview_itch_v4_1_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_equities_totalview_itch_v4_1_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_equities_totalview_itch_v4_1_size_of.sequence = 8

-- Display: Sequence
nasdaq_equities_totalview_itch_v4_1_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_equities_totalview_itch_v4_1_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_equities_totalview_itch_v4_1_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_equities_totalview_itch_v4_1_size_of.session = 10

-- Display: Session
nasdaq_equities_totalview_itch_v4_1_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_equities_totalview_itch_v4_1_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_equities_totalview_itch_v4_1_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_equities_totalview_itch_v4_1_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_totalview_itch_v4_1.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_equities_totalview_itch_v4_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.session

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.sequence

  index = index + nasdaq_equities_totalview_itch_v4_1_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_equities_totalview_itch_v4_1_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_equities_totalview_itch_v4_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_equities_totalview_itch_v4_1_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_equities_totalview_itch_v4_1_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_equities_totalview_itch_v4_1_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_equities_totalview_itch_v4_1_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_equities_totalview_itch_v4_1_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_equities_totalview_itch_v4_1_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_totalview_itch_v4_1.fields.packet_header, range, display)
  end

  return nasdaq_equities_totalview_itch_v4_1_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_equities_totalview_itch_v4_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_equities_totalview_itch_v4_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = nasdaq_equities_totalview_itch_v4_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_equities_totalview_itch_v4_1.init()
end

-- Dissector for Nasdaq Equities TotalView Itch 4.1
function nasdaq_equities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_equities_totalview_itch_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_equities_totalview_itch_v4_1, buffer(), nasdaq_equities_totalview_itch_v4_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_equities_totalview_itch_v4_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_equities_totalview_itch_v4_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_equities_totalview_itch_v4_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Equities TotalView Itch 4.1
local function nasdaq_equities_totalview_itch_v4_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_equities_totalview_itch_v4_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_equities_totalview_itch_v4_1
  nasdaq_equities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Equities TotalView Itch 4.1
nasdaq_equities_totalview_itch_v4_1:register_heuristic("udp", nasdaq_equities_totalview_itch_v4_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 4.1
--   Date: Thursday, June 12, 2014
--   Specification: NQTV-ITCH-V4_1.pdf
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
