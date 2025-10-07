-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 4.1 Protocol
local omi_nasdaq_nsmequities_totalview_itch_v4_1 = Proto("Nasdaq.NsmEquities.TotalView.Itch.v4.1.Lua", "Nasdaq NsmEquities TotalView Itch 4.1")

-- Protocol table
local nasdaq_nsmequities_totalview_itch_v4_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 4.1 Fields
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.itch.v4.1.attribution", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v4.1.canceledshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.totalview.itch.v4.1.crossprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.nsmequities.totalview.itch.v4.1.crossshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.totalview.itch.v4.1.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.totalview.itch.v4.1.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v4.1.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v4.1.executedshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.totalview.itch.v4.1.executionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.totalview.itch.v4.1.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.totalview.itch.v4.1.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.totalview.itch.v4.1.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.totalview.itch.v4.1.imbalanceshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.totalview.itch.v4.1.interestflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.totalview.itch.v4.1.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.totalview.itch.v4.1.marketmakermode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.totalview.itch.v4.1.marketparticipantstate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v4.1.matchnumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v4.1.message", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.totalview.itch.v4.1.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v4.1.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.totalview.itch.v4.1.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v4.1.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.totalview.itch.v4.1.mpid", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.totalview.itch.v4.1.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nsmequities.totalview.itch.v4.1.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v4.1.packet", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v4.1.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.totalview.itch.v4.1.pairedshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.totalview.itch.v4.1.payload", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v4.1.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.totalview.itch.v4.1.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.totalview.itch.v4.1.primarymarketmaker", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.printable = ProtoField.new("Printable", "nasdaq.nsmequities.totalview.itch.v4.1.printable", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.totalview.itch.v4.1.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.second = ProtoField.new("Second", "nasdaq.nsmequities.totalview.itch.v4.1.second", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.totalview.itch.v4.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v4.1.session", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v4.1.shares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.side = ProtoField.new("Side", "nasdaq.nsmequities.totalview.itch.v4.1.side", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v4.1.stock", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.totalview.itch.v4.1.timestamp", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "nasdaq.nsmequities.totalview.itch.v4.1.timestampnanoseconds", ftypes.UINT32)

-- Nasdaq NsmEquities TotalView Itch 4.1 messages
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_message = ProtoField.new("Add Order Message", "nasdaq.nsmequities.totalview.itch.v4.1.addordermessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_with_mpid_message = ProtoField.new("Add Order With Mpid Message", "nasdaq.nsmequities.totalview.itch.v4.1.addorderwithmpidmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.crosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.totalview.itch.v4.1.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v4.1.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderdeletemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nsmequities.totalview.itch.v4.1.orderreplacemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.nsmequities.totalview.itch.v4.1.retailpriceimprovementindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.totalview.itch.v4.1.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v4.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.time_stamp_message = ProtoField.new("Time Stamp Message", "nasdaq.nsmequities.totalview.itch.v4.1.timestampmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nsmequities.totalview.itch.v4.1.trademessage", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 4.1 generated fields
omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v4.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities TotalView Itch 4.1 Element Dissection Options
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

-- Register Nasdaq NsmEquities TotalView Itch 4.1 Show Options
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message = Pref.bool("Show Add Order With Mpid Message", show.add_order_with_mpid_message, "Parse and add Add Order With Mpid Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message = Pref.bool("Show Retail Price Improvement Indicator Message", show.retail_price_improvement_indicator_message, "Parse and add Retail Price Improvement Indicator Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_time_stamp_message = Pref.bool("Show Time Stamp Message", show.time_stamp_message, "Parse and add Time Stamp Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_message then
    show.add_order_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_message
    changed = true
  end
  if show.add_order_with_mpid_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message then
    show.add_order_with_mpid_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_add_order_with_mpid_message
    changed = true
  end
  if show.broken_trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_cross_trade_message then
    show.cross_trade_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_cross_trade_message
    changed = true
  end
  if show.market_participant_position_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_market_participant_position_message then
    show.market_participant_position_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message then
    show.message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_message_header
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.order_cancel_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_delete_message then
    show.order_delete_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_message then
    show.order_executed_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_replace_message then
    show.order_replace_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.retail_price_improvement_indicator_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message then
    show.retail_price_improvement_indicator_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_retail_price_improvement_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_stock_directory_message then
    show.stock_directory_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_stock_directory_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_system_event_message
    changed = true
  end
  if show.time_stamp_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_time_stamp_message then
    show.time_stamp_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_time_stamp_message
    changed = true
  end
  if show.trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_trade_message then
    show.trade_message = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_payload then
    show.payload = omi_nasdaq_nsmequities_totalview_itch_v4_1.prefs.show_payload
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
-- Dissect Nasdaq NsmEquities TotalView Itch 4.1
-----------------------------------------------------------------------

-- Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag = {}

-- Size: Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size = 4

-- Display: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message = {}

-- Size: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.size

-- Display: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index, interest_flag = nasdaq_nsmequities_totalview_itch_v4_1.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.retail_price_improvement_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.retail_price_improvement_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_totalview_itch_v4_1.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.near_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.near_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_totalview_itch_v4_1.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.far_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.far_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.far_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.near_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_nsmequities_totalview_itch_v4_1.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_nsmequities_totalview_itch_v4_1.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_nsmequities_totalview_itch_v4_1.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_nsmequities_totalview_itch_v4_1.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_nsmequities_totalview_itch_v4_1.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_nsmequities_totalview_itch_v4_1.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.net_order_imbalance_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size = 4

-- Display: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_totalview_itch_v4_1.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares = {}

-- Size: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.cross_type.size

-- Display: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_nsmequities_totalview_itch_v4_1.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_nsmequities_totalview_itch_v4_1.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v4_1.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
nasdaq_nsmequities_totalview_itch_v4_1.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.size = 4

-- Display: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v4_1.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.price, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.size = 4

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.shares, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nsmequities_totalview_itch_v4_1.side = {}

-- Size: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.size = 1

-- Display: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nsmequities_totalview_itch_v4_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.side, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message = {}

-- Size: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nsmequities_totalview_itch_v4_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size

-- Display: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = nasdaq_nsmequities_totalview_itch_v4_1.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size

-- Display: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v4_1.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size = 4

-- Display: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_totalview_itch_v4_1.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.translate(raw)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable = {}

-- Size: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.size = 1

-- Display: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.display = function(value)
  if value == "N" then
    return "Printable: Nonprintable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nsmequities_totalview_itch_v4_1.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.printable, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares = {}

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.printable.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_nsmequities_totalview_itch_v4_1.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_nsmequities_totalview_itch_v4_1.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.match_number.size

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v4_1.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v4_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution = {}

-- Size: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.size = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_itch_v4_1.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.attribution, range, value, display)

  return offset + length, value
end

-- Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message = {}

-- Size: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.attribution.size

-- Display: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_nsmequities_totalview_itch_v4_1.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_with_mpid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_with_mpid_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message = {}

-- Size: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.side.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.shares.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.price.size

-- Display: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v4_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nasdaq_nsmequities_totalview_itch_v4_1.side.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v4_1.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v4_1.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.add_order_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state = {}

-- Size: Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Nonprimary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid = {}

-- Size: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.size = 4

-- Display: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_totalview_itch_v4_1.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v4_1.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.mpid, range, value, display)

  return offset + length, value
end

-- Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.mpid.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_nsmequities_totalview_itch_v4_1.mpid.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_nsmequities_totalview_itch_v4_1.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 4 values
  index, market_maker_mode = nasdaq_nsmequities_totalview_itch_v4_1.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.market_participant_position_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_totalview_itch_v4_1.market_category.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.stock.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.market_category.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v4_1.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 7 values
  index, market_category = nasdaq_nsmequities_totalview_itch_v4_1.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 8 values
  index, financial_status_indicator = nasdaq_nsmequities_totalview_itch_v4_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v4_1.event_code.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.timestamp.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 9 values
  index, event_code = nasdaq_nsmequities_totalview_itch_v4_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Second
nasdaq_nsmequities_totalview_itch_v4_1.second = {}

-- Size: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.size = 4

-- Display: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_nsmequities_totalview_itch_v4_1.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.second, range, value, display)

  return offset + length, value
end

-- Time Stamp Message
nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message = {}

-- Size: Time Stamp Message
nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.size =
  nasdaq_nsmequities_totalview_itch_v4_1.second.size

-- Display: Time Stamp Message
nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Message
nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: 4 Byte Unsigned Fixed Width Integer
  index, second = nasdaq_nsmequities_totalview_itch_v4_1.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Stamp Message
nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.dissect = function(buffer, offset, packet, parent)
  if show.time_stamp_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.time_stamp_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload = {}

-- Calculate runtime size of: Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload.size = function(buffer, offset, message_type)
  -- Size of Time Stamp Message
  if message_type == "T" then
    return nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.size(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.size(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.size(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.size(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.size(buffer, offset)
  end
  -- Size of Add Order With Mpid Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.size(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.size(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.size(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.size(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.size(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.size(buffer, offset)
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.size(buffer, offset)
  end
  -- Size of Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Stamp Message
  if message_type == "T" then
    return nasdaq_nsmequities_totalview_itch_v4_1.time_stamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v4_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v4_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v4_1.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v4_1.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v4_1.add_order_with_mpid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v4_1.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v4_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v4_1.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v4_1.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v4_1.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v4_1.retail_price_improvement_indicator_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v4_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nsmequities_totalview_itch_v4_1.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_totalview_itch_v4_1.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_totalview_itch_v4_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.payload, range, display)

  return nasdaq_nsmequities_totalview_itch_v4_1.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v4_1.message_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v4_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_totalview_itch_v4_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.message_length.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.message_type.size

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_totalview_itch_v4_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 17 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v4_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v4_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_totalview_itch_v4_1.message = {}

-- Display: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v4_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 17 branches
  index = nasdaq_nsmequities_totalview_itch_v4_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v4_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_totalview_itch_v4_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_totalview_itch_v4_1.session = {}

-- Size: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.size = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v4_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v4_1.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_nsmequities_totalview_itch_v4_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.size =
  nasdaq_nsmequities_totalview_itch_v4_1.session.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.size + 
  nasdaq_nsmequities_totalview_itch_v4_1.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v4_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_totalview_itch_v4_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_totalview_itch_v4_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v4_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v4_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_totalview_itch_v4_1.packet = {}

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v4_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v4_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_nsmequities_totalview_itch_v4_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_totalview_itch_v4_1.init()
end

-- Dissector for Nasdaq NsmEquities TotalView Itch 4.1
function omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v4_1, buffer(), omi_nasdaq_nsmequities_totalview_itch_v4_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_totalview_itch_v4_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nsmequities_totalview_itch_v4_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_nsmequities_totalview_itch_v4_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 4.1
local function omi_nasdaq_nsmequities_totalview_itch_v4_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_totalview_itch_v4_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v4_1
  omi_nasdaq_nsmequities_totalview_itch_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities TotalView Itch 4.1
omi_nasdaq_nsmequities_totalview_itch_v4_1:register_heuristic("udp", omi_nasdaq_nsmequities_totalview_itch_v4_1_heuristic)

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
