-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Psx TotalView Itch 5.0 Protocol
local nasdaq_psx_totalview_itch_v5_0 = Proto("Nasdaq.Psx.TotalView.Itch.v5.0.Lua", "Nasdaq Psx TotalView Itch 5.0")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Psx TotalView Itch 5.0 Fields
nasdaq_psx_totalview_itch_v5_0.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.psx.totalview.itch.v5.0.addordernompidattributionmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.psx.totalview.itch.v5.0.addorderwithmpidattributionmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.attribution = ProtoField.new("Attribution", "nasdaq.psx.totalview.itch.v5.0.attribution", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.psx.totalview.itch.v5.0.auctioncollarextension", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.psx.totalview.itch.v5.0.auctioncollarreferenceprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psx.totalview.itch.v5.0.authenticity", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psx.totalview.itch.v5.0.breachedlevel", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psx.totalview.itch.v5.0.brokentrademessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psx.totalview.itch.v5.0.buysellindicator", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.psx.totalview.itch.v5.0.canceledshares", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.count = ProtoField.new("Count", "nasdaq.psx.totalview.itch.v5.0.count", ftypes.UINT16)
nasdaq_psx_totalview_itch_v5_0.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.psx.totalview.itch.v5.0.crossprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.psx.totalview.itch.v5.0.crossshares", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.psx.totalview.itch.v5.0.crosstrademessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psx.totalview.itch.v5.0.crosstype", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.psx.totalview.itch.v5.0.currentreferenceprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psx.totalview.itch.v5.0.etpflag", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psx.totalview.itch.v5.0.etpleveragefactor", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.psx.totalview.itch.v5.0.eventcode", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psx.totalview.itch.v5.0.executedshares", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psx.totalview.itch.v5.0.executionprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.far_price = ProtoField.new("Far Price", "nasdaq.psx.totalview.itch.v5.0.farprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psx.totalview.itch.v5.0.financialstatusindicator", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.psx.totalview.itch.v5.0.imbalancedirection", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.psx.totalview.itch.v5.0.imbalanceshares", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psx.totalview.itch.v5.0.inverseindicator", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psx.totalview.itch.v5.0.ipoflag", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psx.totalview.itch.v5.0.issueclassification", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psx.totalview.itch.v5.0.issuesubtype", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.length = ProtoField.new("Length", "nasdaq.psx.totalview.itch.v5.0.length", ftypes.UINT16)
nasdaq_psx_totalview_itch_v5_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psx.totalview.itch.v5.0.level1", ftypes.INT64)
nasdaq_psx_totalview_itch_v5_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psx.totalview.itch.v5.0.level2", ftypes.INT64)
nasdaq_psx_totalview_itch_v5_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psx.totalview.itch.v5.0.level3", ftypes.INT64)
nasdaq_psx_totalview_itch_v5_0.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.psx.totalview.itch.v5.0.locatecode", ftypes.UINT16)
nasdaq_psx_totalview_itch_v5_0.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.psx.totalview.itch.v5.0.lowerauctioncollarprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.psx.totalview.itch.v5.0.luldauctioncollarmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psx.totalview.itch.v5.0.luldreferencepricetier", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.psx.totalview.itch.v5.0.marketcategory", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.psx.totalview.itch.v5.0.marketcode", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.psx.totalview.itch.v5.0.marketmakermode", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.psx.totalview.itch.v5.0.marketparticipantpositionmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.psx.totalview.itch.v5.0.marketparticipantstate", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.psx.totalview.itch.v5.0.matchnumber", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.message = ProtoField.new("Message", "nasdaq.psx.totalview.itch.v5.0.message", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.psx.totalview.itch.v5.0.messageheader", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.psx.totalview.itch.v5.0.messagetype", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.psx.totalview.itch.v5.0.mpid", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psx.totalview.itch.v5.0.mwcbdeclinelevelmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.psx.totalview.itch.v5.0.mwcbstatuslevelmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.near_price = ProtoField.new("Near Price", "nasdaq.psx.totalview.itch.v5.0.nearprice", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.psx.totalview.itch.v5.0.netorderimbalanceindicatormessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.psx.totalview.itch.v5.0.neworderreferencenumber", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psx.totalview.itch.v5.0.operationalhaltaction", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psx.totalview.itch.v5.0.operationalhaltmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.psx.totalview.itch.v5.0.ordercancelmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.psx.totalview.itch.v5.0.orderdeletemessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.psx.totalview.itch.v5.0.orderexecutedmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.psx.totalview.itch.v5.0.orderexecutedwithpricemessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psx.totalview.itch.v5.0.orderreferencenumber", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.psx.totalview.itch.v5.0.orderreplacemessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.psx.totalview.itch.v5.0.originalorderreferencenumber", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.packet = ProtoField.new("Packet", "nasdaq.psx.totalview.itch.v5.0.packet", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psx.totalview.itch.v5.0.packetheader", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.psx.totalview.itch.v5.0.pairedshares", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.payload = ProtoField.new("Payload", "nasdaq.psx.totalview.itch.v5.0.payload", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.price = ProtoField.new("Price", "nasdaq.psx.totalview.itch.v5.0.price", ftypes.INT32)
nasdaq_psx_totalview_itch_v5_0.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.psx.totalview.itch.v5.0.pricevariationindicator", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.psx.totalview.itch.v5.0.primarymarketmaker", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.printable = ProtoField.new("Printable", "nasdaq.psx.totalview.itch.v5.0.printable", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.reason = ProtoField.new("Reason", "nasdaq.psx.totalview.itch.v5.0.reason", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psx.totalview.itch.v5.0.regshoaction", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psx.totalview.itch.v5.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.reserved = ProtoField.new("Reserved", "nasdaq.psx.totalview.itch.v5.0.reserved", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psx.totalview.itch.v5.0.roundlotsize", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psx.totalview.itch.v5.0.roundlotsonly", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.psx.totalview.itch.v5.0.sequence", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.session = ProtoField.new("Session", "nasdaq.psx.totalview.itch.v5.0.session", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.shares = ProtoField.new("Shares", "nasdaq.psx.totalview.itch.v5.0.shares", ftypes.UINT32)
nasdaq_psx_totalview_itch_v5_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psx.totalview.itch.v5.0.shortsalethresholdindicator", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.stock = ProtoField.new("Stock", "nasdaq.psx.totalview.itch.v5.0.stock", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psx.totalview.itch.v5.0.stockdirectorymessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.psx.totalview.itch.v5.0.stocklocate", ftypes.UINT16)
nasdaq_psx_totalview_itch_v5_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psx.totalview.itch.v5.0.stocktradingactionmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psx.totalview.itch.v5.0.systemeventmessage", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psx.totalview.itch.v5.0.timestamp", ftypes.UINT64)
nasdaq_psx_totalview_itch_v5_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psx.totalview.itch.v5.0.trackingnumber", ftypes.UINT16)
nasdaq_psx_totalview_itch_v5_0.fields.trade_message_non_cross = ProtoField.new("Trade Message Non Cross", "nasdaq.psx.totalview.itch.v5.0.trademessagenoncross", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psx.totalview.itch.v5.0.tradingstate", ftypes.STRING)
nasdaq_psx_totalview_itch_v5_0.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.psx.totalview.itch.v5.0.upperauctioncollarprice", ftypes.INT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Psx TotalView Itch 5.0 Element Dissection Options
show.add_order_no_mpid_attribution_message = true
show.add_order_with_mpid_attribution_message = true
show.broken_trade_message = true
show.cross_trade_message = true
show.luld_auction_collar_message = true
show.market_participant_position_message = true
show.message = true
show.message_header = true
show.mwcb_decline_level_message = true
show.mwcb_status_level_message = true
show.net_order_imbalance_indicator_message = true
show.operational_halt_message = true
show.order_cancel_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replace_message = true
show.packet = true
show.packet_header = true
show.reg_sho_short_sale_price_test_restricted_indicator_message = true
show.stock_directory_message = true
show.stock_trading_action_message = true
show.system_event_message = true
show.trade_message_non_cross = true
show.payload = false

-- Register Nasdaq Psx TotalView Itch 5.0 Show Options
nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message = Pref.bool("Show Add Order No Mpid Attribution Message", show.add_order_no_mpid_attribution_message, "Parse and add Add Order No Mpid Attribution Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message = Pref.bool("Show Add Order With Mpid Attribution Message", show.add_order_with_mpid_attribution_message, "Parse and add Add Order With Mpid Attribution Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_luld_auction_collar_message = Pref.bool("Show Luld Auction Collar Message", show.luld_auction_collar_message, "Parse and add Luld Auction Collar Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_status_level_message = Pref.bool("Show Mwcb Status Level Message", show.mwcb_status_level_message, "Parse and add Mwcb Status Level Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_trade_message_non_cross = Pref.bool("Show Trade Message Non Cross", show.trade_message_non_cross, "Parse and add Trade Message Non Cross to protocol tree")
nasdaq_psx_totalview_itch_v5_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_psx_totalview_itch_v5_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_mpid_attribution_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message then
    show.add_order_no_mpid_attribution_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message
    changed = true
  end
  if show.add_order_with_mpid_attribution_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message then
    show.add_order_with_mpid_attribution_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message
    changed = true
  end
  if show.broken_trade_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_broken_trade_message then
    show.broken_trade_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_cross_trade_message then
    show.cross_trade_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_cross_trade_message
    changed = true
  end
  if show.luld_auction_collar_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_luld_auction_collar_message then
    show.luld_auction_collar_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_luld_auction_collar_message
    changed = true
  end
  if show.market_participant_position_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_market_participant_position_message then
    show.market_participant_position_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_message then
    show.message = nasdaq_psx_totalview_itch_v5_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_message_header then
    show.message_header = nasdaq_psx_totalview_itch_v5_0.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_level_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_status_level_message then
    show.mwcb_status_level_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_mwcb_status_level_message
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.operational_halt_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_operational_halt_message then
    show.operational_halt_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_operational_halt_message
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_order_delete_message then
    show.order_delete_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_message then
    show.order_executed_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_order_replace_message then
    show.order_replace_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_packet then
    show.packet = nasdaq_psx_totalview_itch_v5_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_packet_header then
    show.packet_header = nasdaq_psx_totalview_itch_v5_0.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_psx_totalview_itch_v5_0.prefs.show_system_event_message
    changed = true
  end
  if show.trade_message_non_cross ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_trade_message_non_cross then
    show.trade_message_non_cross = nasdaq_psx_totalview_itch_v5_0.prefs.show_trade_message_non_cross
    changed = true
  end
  if show.payload ~= nasdaq_psx_totalview_itch_v5_0.prefs.show_payload then
    show.payload = nasdaq_psx_totalview_itch_v5_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Psx TotalView Itch 5.0
-----------------------------------------------------------------------

-- Size: Price Variation Indicator
size_of.price_variation_indicator = 1

-- Display: Price Variation Indicator
display.price_variation_indicator = function(value)
  if value == "L" then
    return "Price Variation Indicator: Less Than 1 (L)"
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
dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.price_variation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  if value == "O" then
    return "Cross Type: Opening Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Closing Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Cross Halted Or Paused (H)"
  end
  if value == "I" then
    return "Cross Type: Intraday Cross And Post Close Cross (I)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Current Reference Price
size_of.current_reference_price = 4

-- Display: Current Reference Price
display.current_reference_price = function(value)
  return "Current Reference Price: "..value
end

-- Dissect: Current Reference Price
dissect.current_reference_price = function(buffer, offset, packet, parent)
  local length = size_of.current_reference_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.current_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Near Price
size_of.near_price = 4

-- Display: Near Price
display.near_price = function(value)
  return "Near Price: "..value
end

-- Dissect: Near Price
dissect.near_price = function(buffer, offset, packet, parent)
  local length = size_of.near_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.near_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.near_price, range, value, display)

  return offset + length, value
end

-- Size: Far Price
size_of.far_price = 4

-- Display: Far Price
display.far_price = function(value)
  return "Far Price: "..value
end

-- Dissect: Far Price
dissect.far_price = function(buffer, offset, packet, parent)
  local length = size_of.far_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.far_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Stock
size_of.stock = 8

-- Display: Stock
display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
dissect.stock = function(buffer, offset, packet, parent)
  local length = size_of.stock
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
size_of.imbalance_direction = 1

-- Display: Imbalance Direction
display.imbalance_direction = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders (O)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Shares
size_of.imbalance_shares = 8

-- Display: Imbalance Shares
display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Size: Paired Shares
size_of.paired_shares = 8

-- Display: Paired Shares
display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = size_of.paired_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 6

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
size_of.tracking_number = 2

-- Display: Tracking Number
display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Size: Stock Locate
size_of.stock_locate = 2

-- Display: Stock Locate
display.stock_locate = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
dissect.stock_locate = function(buffer, offset, packet, parent)
  local length = size_of.stock_locate
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.stock_locate(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Calculate size of: Net Order Imbalance Indicator Message
size_of.net_order_imbalance_indicator_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.paired_shares

  index = index + size_of.imbalance_shares

  index = index + size_of.imbalance_direction

  index = index + size_of.stock

  index = index + size_of.far_price

  index = index + size_of.near_price

  index = index + size_of.current_reference_price

  index = index + size_of.cross_type

  index = index + size_of.price_variation_indicator

  return index
end

-- Display: Net Order Imbalance Indicator Message
display.net_order_imbalance_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = dissect.paired_shares(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = dissect.imbalance_direction(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Far Price: 4 Byte Signed Fixed Width Integer
  index, far_price = dissect.far_price(buffer, index, packet, parent)

  -- Near Price: 4 Byte Signed Fixed Width Integer
  index, near_price = dissect.near_price(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Signed Fixed Width Integer
  index, current_reference_price = dissect.current_reference_price(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
dissect.net_order_imbalance_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.net_order_imbalance_indicator_message then
    local length = size_of.net_order_imbalance_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.net_order_imbalance_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.net_order_imbalance_indicator_message, range, display)
  end

  return dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Match Number
size_of.match_number = 8

-- Display: Match Number
display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
dissect.match_number = function(buffer, offset, packet, parent)
  local length = size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Message
size_of.broken_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.match_number

  return index
end

-- Display: Broken Trade Message
display.broken_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broken Trade Message
dissect.broken_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
dissect.broken_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.broken_trade_message then
    local length = size_of.broken_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.broken_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.broken_trade_message, range, display)
  end

  return dissect.broken_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Cross Price
size_of.cross_price = 4

-- Display: Cross Price
display.cross_price = function(value)
  return "Cross Price: "..value
end

-- Dissect: Cross Price
dissect.cross_price = function(buffer, offset, packet, parent)
  local length = size_of.cross_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.cross_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Size: Cross Shares
size_of.cross_shares = 8

-- Display: Cross Shares
display.cross_shares = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
dissect.cross_shares = function(buffer, offset, packet, parent)
  local length = size_of.cross_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.cross_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.cross_shares

  index = index + size_of.stock

  index = index + size_of.cross_price

  index = index + size_of.match_number

  index = index + size_of.cross_type

  return index
end

-- Display: Cross Trade Message
display.cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Trade Message
dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = dissect.cross_shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Signed Fixed Width Integer
  index, cross_price = dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
dissect.cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_trade_message then
    local length = size_of.cross_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cross_trade_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.cross_trade_message, range, display)
  end

  return dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Shares
size_of.shares = 4

-- Display: Shares
display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
dissect.shares = function(buffer, offset, packet, parent)
  local length = size_of.shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Size: Buy Sell Indicator
size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local length = size_of.buy_sell_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number
size_of.order_reference_number = 8

-- Display: Order Reference Number
display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message Non Cross
size_of.trade_message_non_cross = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  index = index + size_of.match_number

  return index
end

-- Display: Trade Message Non Cross
display.trade_message_non_cross = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message Non Cross
dissect.trade_message_non_cross_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Non Cross
dissect.trade_message_non_cross = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message_non_cross then
    local length = size_of.trade_message_non_cross(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message_non_cross(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.trade_message_non_cross, range, display)
  end

  return dissect.trade_message_non_cross_fields(buffer, offset, packet, parent)
end

-- Size: New Order Reference Number
size_of.new_order_reference_number = 8

-- Display: New Order Reference Number
display.new_order_reference_number = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
dissect.new_order_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.new_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.new_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Original Order Reference Number
size_of.original_order_reference_number = 8

-- Display: Original Order Reference Number
display.original_order_reference_number = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
dissect.original_order_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.original_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.original_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message
size_of.order_replace_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.original_order_reference_number

  index = index + size_of.new_order_reference_number

  index = index + size_of.shares

  index = index + size_of.price

  return index
end

-- Display: Order Replace Message
display.order_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message
dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = dissect.original_order_reference_number(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = dissect.new_order_reference_number(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
dissect.order_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message then
    local length = size_of.order_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_replace_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_replace_message, range, display)
  end

  return dissect.order_replace_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Delete Message
size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  return index
end

-- Display: Order Delete Message
display.order_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete Message
dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
dissect.order_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete_message then
    local length = size_of.order_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_delete_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_delete_message, range, display)
  end

  return dissect.order_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Shares
size_of.canceled_shares = 4

-- Display: Canceled Shares
display.canceled_shares = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
dissect.canceled_shares = function(buffer, offset, packet, parent)
  local length = size_of.canceled_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.canceled_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Message
size_of.order_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.canceled_shares

  return index
end

-- Display: Order Cancel Message
display.order_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Message
dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = dissect.canceled_shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
dissect.order_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_message then
    local length = size_of.order_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_cancel_message, range, display)
  end

  return dissect.order_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Price
size_of.execution_price = 4

-- Display: Execution Price
display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
dissect.execution_price = function(buffer, offset, packet, parent)
  local length = size_of.execution_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Size: Printable
size_of.printable = 1

-- Display: Printable
display.printable = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local length = size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
size_of.executed_shares = 4

-- Display: Executed Shares
display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = size_of.executed_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Message
size_of.order_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.executed_shares

  index = index + size_of.match_number

  index = index + size_of.printable

  index = index + size_of.execution_price

  return index
end

-- Display: Order Executed With Price Message
display.order_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = dissect.printable(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Signed Fixed Width Integer
  index, execution_price = dissect.execution_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price_message then
    local length = size_of.order_executed_with_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_executed_with_price_message, range, display)
  end

  return dissect.order_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.executed_shares

  index = index + size_of.match_number

  return index
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Attribution
size_of.attribution = 4

-- Display: Attribution
display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
dissect.attribution = function(buffer, offset, packet, parent)
  local length = size_of.attribution
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.attribution(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.attribution, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order With Mpid Attribution Message
size_of.add_order_with_mpid_attribution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  index = index + size_of.attribution

  return index
end

-- Display: Add Order With Mpid Attribution Message
display.add_order_with_mpid_attribution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
dissect.add_order_with_mpid_attribution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = dissect.attribution(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
dissect.add_order_with_mpid_attribution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_with_mpid_attribution_message then
    local length = size_of.add_order_with_mpid_attribution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_with_mpid_attribution_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.add_order_with_mpid_attribution_message, range, display)
  end

  return dissect.add_order_with_mpid_attribution_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order No Mpid Attribution Message
size_of.add_order_no_mpid_attribution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.order_reference_number

  index = index + size_of.buy_sell_indicator

  index = index + size_of.shares

  index = index + size_of.stock

  index = index + size_of.price

  return index
end

-- Display: Add Order No Mpid Attribution Message
display.add_order_no_mpid_attribution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
dissect.add_order_no_mpid_attribution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
dissect.add_order_no_mpid_attribution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_no_mpid_attribution_message then
    local length = size_of.add_order_no_mpid_attribution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_no_mpid_attribution_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.add_order_no_mpid_attribution_message, range, display)
  end

  return dissect.add_order_no_mpid_attribution_message_fields(buffer, offset, packet, parent)
end

-- Size: Operational Halt Action
size_of.operational_halt_action = 1

-- Display: Operational Halt Action
display.operational_halt_action = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
dissect.operational_halt_action = function(buffer, offset, packet, parent)
  local length = size_of.operational_halt_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.operational_halt_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Size: Market Code
size_of.market_code = 1

-- Display: Market Code
display.market_code = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Bx (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
dissect.market_code = function(buffer, offset, packet, parent)
  local length = size_of.market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Message
size_of.operational_halt_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.market_code

  index = index + size_of.operational_halt_action

  return index
end

-- Display: Operational Halt Message
display.operational_halt_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Operational Halt Message
dissect.operational_halt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = dissect.market_code(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = dissect.operational_halt_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
dissect.operational_halt_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.operational_halt_message then
    local length = size_of.operational_halt_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.operational_halt_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.operational_halt_message, range, display)
  end

  return dissect.operational_halt_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction Collar Extension
size_of.auction_collar_extension = 4

-- Display: Auction Collar Extension
display.auction_collar_extension = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
dissect.auction_collar_extension = function(buffer, offset, packet, parent)
  local length = size_of.auction_collar_extension
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.auction_collar_extension(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Size: Lower Auction Collar Price
size_of.lower_auction_collar_price = 4

-- Display: Lower Auction Collar Price
display.lower_auction_collar_price = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Dissect: Lower Auction Collar Price
dissect.lower_auction_collar_price = function(buffer, offset, packet, parent)
  local length = size_of.lower_auction_collar_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.lower_auction_collar_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Upper Auction Collar Price
size_of.upper_auction_collar_price = 4

-- Display: Upper Auction Collar Price
display.upper_auction_collar_price = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Dissect: Upper Auction Collar Price
dissect.upper_auction_collar_price = function(buffer, offset, packet, parent)
  local length = size_of.upper_auction_collar_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.upper_auction_collar_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
size_of.auction_collar_reference_price = 4

-- Display: Auction Collar Reference Price
display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Dissect: Auction Collar Reference Price
dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Luld Auction Collar Message
size_of.luld_auction_collar_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.auction_collar_reference_price

  index = index + size_of.upper_auction_collar_price

  index = index + size_of.lower_auction_collar_price

  index = index + size_of.auction_collar_extension

  return index
end

-- Display: Luld Auction Collar Message
display.luld_auction_collar_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
dissect.luld_auction_collar_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 4 Byte Signed Fixed Width Integer
  index, auction_collar_reference_price = dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Upper Auction Collar Price: 4 Byte Signed Fixed Width Integer
  index, upper_auction_collar_price = dissect.upper_auction_collar_price(buffer, index, packet, parent)

  -- Lower Auction Collar Price: 4 Byte Signed Fixed Width Integer
  index, lower_auction_collar_price = dissect.lower_auction_collar_price(buffer, index, packet, parent)

  -- Auction Collar Extension: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_extension = dissect.auction_collar_extension(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
dissect.luld_auction_collar_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.luld_auction_collar_message then
    local length = size_of.luld_auction_collar_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.luld_auction_collar_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.luld_auction_collar_message, range, display)
  end

  return dissect.luld_auction_collar_message_fields(buffer, offset, packet, parent)
end

-- Size: Breached Level
size_of.breached_level = 1

-- Display: Breached Level
display.breached_level = function(value)
  if value == "1" then
    return "Breached Level: Level 1 (1)"
  end
  if value == "2" then
    return "Breached Level: Level 2 (2)"
  end
  if value == "3" then
    return "Breached Level: Level 3 (3)"
  end

  return "Breached Level: Unknown("..value..")"
end

-- Dissect: Breached Level
dissect.breached_level = function(buffer, offset, packet, parent)
  local length = size_of.breached_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.breached_level(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Status Level Message
size_of.mwcb_status_level_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.breached_level

  return index
end

-- Display: Mwcb Status Level Message
display.mwcb_status_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
dissect.mwcb_status_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = dissect.breached_level(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
dissect.mwcb_status_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_status_level_message then
    local length = size_of.mwcb_status_level_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mwcb_status_level_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.mwcb_status_level_message, range, display)
  end

  return dissect.mwcb_status_level_message_fields(buffer, offset, packet, parent)
end

-- Size: Level 3
size_of.level_3 = 8

-- Display: Level 3
display.level_3 = function(value)
  return "Level 3: "..value
end

-- Dissect: Level 3
dissect.level_3 = function(buffer, offset, packet, parent)
  local length = size_of.level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Size: Level 2
size_of.level_2 = 8

-- Display: Level 2
display.level_2 = function(value)
  return "Level 2: "..value
end

-- Dissect: Level 2
dissect.level_2 = function(buffer, offset, packet, parent)
  local length = size_of.level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Size: Level 1
size_of.level_1 = 8

-- Display: Level 1
display.level_1 = function(value)
  return "Level 1: "..value
end

-- Dissect: Level 1
dissect.level_1 = function(buffer, offset, packet, parent)
  local length = size_of.level_1
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Decline Level Message
size_of.mwcb_decline_level_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.level_1

  index = index + size_of.level_2

  index = index + size_of.level_3

  return index
end

-- Display: Mwcb Decline Level Message
display.mwcb_decline_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
dissect.mwcb_decline_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Level 1: 8 Byte Signed Fixed Width Integer
  index, level_1 = dissect.level_1(buffer, index, packet, parent)

  -- Level 2: 8 Byte Signed Fixed Width Integer
  index, level_2 = dissect.level_2(buffer, index, packet, parent)

  -- Level 3: 8 Byte Signed Fixed Width Integer
  index, level_3 = dissect.level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
dissect.mwcb_decline_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_decline_level_message then
    local length = size_of.mwcb_decline_level_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mwcb_decline_level_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.mwcb_decline_level_message, range, display)
  end

  return dissect.mwcb_decline_level_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Participant State
size_of.market_participant_state = 1

-- Display: Market Participant State
display.market_participant_state = function(value)
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
dissect.market_participant_state = function(buffer, offset, packet, parent)
  local length = size_of.market_participant_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_participant_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Size: Market Maker Mode
size_of.market_maker_mode = 1

-- Display: Market Maker Mode
display.market_maker_mode = function(value)
  if value == "N" then
    return "Market Maker Mode: Normal (N)"
  end
  if value == "P" then
    return "Market Maker Mode: Passive (P)"
  end
  if value == "S" then
    return "Market Maker Mode: Syndicate (S)"
  end
  if value == "R" then
    return "Market Maker Mode: Pre Syndicate (R)"
  end
  if value == "L" then
    return "Market Maker Mode: Penalty (L)"
  end

  return "Market Maker Mode: Unknown("..value..")"
end

-- Dissect: Market Maker Mode
dissect.market_maker_mode = function(buffer, offset, packet, parent)
  local length = size_of.market_maker_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_maker_mode(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Size: Primary Market Maker
size_of.primary_market_maker = 1

-- Display: Primary Market Maker
display.primary_market_maker = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
dissect.primary_market_maker = function(buffer, offset, packet, parent)
  local length = size_of.primary_market_maker
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_market_maker(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Size: Mpid
size_of.mpid = 4

-- Display: Mpid
display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
dissect.mpid = function(buffer, offset, packet, parent)
  local length = size_of.mpid
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Participant Position Message
size_of.market_participant_position_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.mpid

  index = index + size_of.stock

  index = index + size_of.primary_market_maker

  index = index + size_of.market_maker_mode

  index = index + size_of.market_participant_state

  return index
end

-- Display: Market Participant Position Message
display.market_participant_position_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Participant Position Message
dissect.market_participant_position_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = dissect.mpid(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = dissect.primary_market_maker(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = dissect.market_maker_mode(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = dissect.market_participant_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
dissect.market_participant_position_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_participant_position_message then
    local length = size_of.market_participant_position_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_participant_position_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.market_participant_position_message, range, display)
  end

  return dissect.market_participant_position_message_fields(buffer, offset, packet, parent)
end

-- Size: Reg Sho Action
size_of.reg_sho_action = 1

-- Display: Reg Sho Action
display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Short Sale Price Test Restriction (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Test Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Size: Locate Code
size_of.locate_code = 2

-- Display: Locate Code
display.locate_code = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
dissect.locate_code = function(buffer, offset, packet, parent)
  local length = size_of.locate_code
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.locate_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
size_of.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)
  local index = 0

  index = index + size_of.locate_code

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
display.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: 2 Byte Unsigned Fixed Width Integer
  index, locate_code = dissect.locate_code(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    local length = size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, range, display)
  end

  return dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
size_of.reason = 4

-- Display: Reason
display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Trading State
size_of.trading_state = 1

-- Display: Trading State
display.trading_state = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "P" then
    return "Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only Period (Q)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
dissect.trading_state = function(buffer, offset, packet, parent)
  local length = size_of.trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.trading_state

  index = index + size_of.reserved

  index = index + size_of.reason

  return index
end

-- Display: Stock Trading Action Message
display.stock_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
dissect.stock_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 4 values
  index, trading_state = dissect.trading_state(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
dissect.stock_trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_trading_action_message then
    local length = size_of.stock_trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.stock_trading_action_message, range, display)
  end

  return dissect.stock_trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Inverse Indicator
size_of.inverse_indicator = 1

-- Display: Inverse Indicator
display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
size_of.etp_flag = 1

-- Display: Etp Flag
display.etp_flag = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Na (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
display.luld_reference_price_tier = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Na (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
size_of.ipo_flag = 1

-- Display: Ipo Flag
display.ipo_flag = function(value)
  if value == "Y" then
    return "Ipo Flag: Nasdaq Listed Instrument (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Nasdaq Listed Instrument (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
display.short_sale_threshold_indicator = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Na (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
size_of.authenticity = 1

-- Display: Authenticity
display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
dissect.authenticity = function(buffer, offset, packet, parent)
  local length = size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Sub Type
size_of.issue_sub_type = 2

-- Display: Issue Sub Type
display.issue_sub_type = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
dissect.issue_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.issue_sub_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.issue_sub_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
size_of.issue_classification = 1

-- Display: Issue Classification
display.issue_classification = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
size_of.round_lots_only = 1

-- Display: Round Lots Only
display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Nasdaq Psx (Y)"
  end
  if value == "N" then
    return "Round Lots Only: Nasdaq Psx (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
size_of.round_lot_size = 4

-- Display: Round Lot Size
display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
display.financial_status_indicator = function(value)
  if value == "D" then
    return "Financial Status Indicator: Deficient (D)"
  end
  if value == "E" then
    return "Financial Status Indicator: Delinquent (E)"
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
  if value == "C" then
    return "Financial Status Indicator: Creations And Redemptions Suspended (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Na (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
size_of.market_category = 1

-- Display: Market Category
display.market_category = function(value)
  if value == "Q" then
    return "Market Category: Nasdaq Global Select Market (Q)"
  end
  if value == "G" then
    return "Market Category: Nasdaq Global Market (G)"
  end
  if value == "S" then
    return "Market Category: Nasdaq Capital Market (S)"
  end
  if value == "N" then
    return "Market Category: Nyse (N)"
  end
  if value == "A" then
    return "Market Category: Nyse Mkt (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Market Category: Bats Z (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange (V)"
  end
  if value == " " then
    return "Market Category: Na (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
dissect.market_category = function(buffer, offset, packet, parent)
  local length = size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.market_category

  index = index + size_of.financial_status_indicator

  index = index + size_of.round_lot_size

  index = index + size_of.round_lots_only

  index = index + size_of.issue_classification

  index = index + size_of.issue_sub_type

  index = index + size_of.authenticity

  index = index + size_of.short_sale_threshold_indicator

  index = index + size_of.ipo_flag

  index = index + size_of.luld_reference_price_tier

  index = index + size_of.etp_flag

  index = index + size_of.etp_leverage_factor

  index = index + size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
display.stock_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Directory Message
dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = dissect.issue_sub_type(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
dissect.stock_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_directory_message then
    local length = size_of.stock_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.stock_directory_message, range, display)
  end

  return dissect.stock_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
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
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.stock_locate

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.event_code

  return index
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return size_of.stock_trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return size_of.market_participant_position_message(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return size_of.mwcb_decline_level_message(buffer, offset)
  end
  -- Size of Mwcb Status Level Message
  if message_type == "W" then
    return size_of.mwcb_status_level_message(buffer, offset)
  end
  -- Size of Luld Auction Collar Message
  if message_type == "J" then
    return size_of.luld_auction_collar_message(buffer, offset)
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return size_of.operational_halt_message(buffer, offset)
  end
  -- Size of Add Order No Mpid Attribution Message
  if message_type == "A" then
    return size_of.add_order_no_mpid_attribution_message(buffer, offset)
  end
  -- Size of Add Order With Mpid Attribution Message
  if message_type == "F" then
    return size_of.add_order_with_mpid_attribution_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return size_of.order_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return size_of.order_cancel_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return size_of.order_delete_message(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return size_of.order_replace_message(buffer, offset)
  end
  -- Size of Trade Message Non Cross
  if message_type == "P" then
    return size_of.trade_message_non_cross(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return size_of.broken_trade_message(buffer, offset)
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return size_of.net_order_imbalance_indicator_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return dissect.stock_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return dissect.market_participant_position_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return dissect.mwcb_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Level Message
  if message_type == "W" then
    return dissect.mwcb_status_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return dissect.luld_auction_collar_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return dissect.operational_halt_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution Message
  if message_type == "A" then
    return dissect.add_order_no_mpid_attribution_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution Message
  if message_type == "F" then
    return dissect.add_order_with_mpid_attribution_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Non Cross
  if message_type == "P" then
    return dissect.trade_message_non_cross(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return dissect.broken_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return dissect.net_order_imbalance_indicator_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Stock Directory Message (R)"
  end
  if value == "H" then
    return "Message Type: Stock Trading Action Message (H)"
  end
  if value == "Y" then
    return "Message Type: Reg Sho Short Sale Price Test Restricted Indicator Message (Y)"
  end
  if value == "L" then
    return "Message Type: Market Participant Position Message (L)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Level Message (W)"
  end
  if value == "J" then
    return "Message Type: Luld Auction Collar Message (J)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end
  if value == "A" then
    return "Message Type: Add Order No Mpid Attribution Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order With Mpid Attribution Message (F)"
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
    return "Message Type: Trade Message Non Cross (P)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.message_type, range, value, display)

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
  local length = size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 20 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

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
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 20 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.message, range, display)
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
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.count, range, value, display)

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
  local length = size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_psx_totalview_itch_v5_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.session

  index = index + size_of.sequence

  index = index + size_of.count

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_psx_totalview_itch_v5_0.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_psx_totalview_itch_v5_0.init()
end

-- Dissector for Nasdaq Psx TotalView Itch 5.0
function nasdaq_psx_totalview_itch_v5_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_psx_totalview_itch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_psx_totalview_itch_v5_0, buffer(), nasdaq_psx_totalview_itch_v5_0.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_psx_totalview_itch_v5_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_psx_totalview_itch_v5_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Psx TotalView Itch 5.0
local function nasdaq_psx_totalview_itch_v5_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_psx_totalview_itch_v5_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_psx_totalview_itch_v5_0
  nasdaq_psx_totalview_itch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Psx TotalView Itch 5.0
nasdaq_psx_totalview_itch_v5_0:register_heuristic("udp", nasdaq_psx_totalview_itch_v5_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 5.0
--   Date: Thursday, May 3, 2018
--   Specification: PSXTVITCHSpecification.pdf
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
