-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0 Protocol
local omi_nasdaq_psxequities_totalview_itch_v5_0 = Proto("Nasdaq.PsxEquities.TotalView.Itch.v5.0.Lua", "Nasdaq PsxEquities TotalView Itch 5.0")

-- Protocol table
local nasdaq_psxequities_totalview_itch_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0 Fields
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.attribution = ProtoField.new("Attribution", "nasdaq.psxequities.totalview.itch.v5.0.attribution", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.psxequities.totalview.itch.v5.0.auctioncollarextension", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.totalview.itch.v5.0.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.totalview.itch.v5.0.breachedlevel", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.totalview.itch.v5.0.buysellindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.psxequities.totalview.itch.v5.0.canceledshares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.psxequities.totalview.itch.v5.0.crossprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.psxequities.totalview.itch.v5.0.crossshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.totalview.itch.v5.0.crosstype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.totalview.itch.v5.0.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.totalview.itch.v5.0.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.totalview.itch.v5.0.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psxequities.totalview.itch.v5.0.executedshares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psxequities.totalview.itch.v5.0.executionprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.far_price = ProtoField.new("Far Price", "nasdaq.psxequities.totalview.itch.v5.0.farprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.totalview.itch.v5.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.psxequities.totalview.itch.v5.0.imbalancedirection", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.psxequities.totalview.itch.v5.0.imbalanceshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.totalview.itch.v5.0.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.totalview.itch.v5.0.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.totalview.itch.v5.0.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.totalview.itch.v5.0.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.totalview.itch.v5.0.level1", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.totalview.itch.v5.0.level2", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.totalview.itch.v5.0.level3", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.psxequities.totalview.itch.v5.0.locatecode", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.lowerauctioncollarprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.totalview.itch.v5.0.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.totalview.itch.v5.0.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.totalview.itch.v5.0.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.psxequities.totalview.itch.v5.0.marketmakermode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.psxequities.totalview.itch.v5.0.marketparticipantstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.totalview.itch.v5.0.matchnumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message = ProtoField.new("Message", "nasdaq.psxequities.totalview.itch.v5.0.message", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.totalview.itch.v5.0.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.totalview.itch.v5.0.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.totalview.itch.v5.0.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.totalview.itch.v5.0.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.psxequities.totalview.itch.v5.0.mpid", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.near_price = ProtoField.new("Near Price", "nasdaq.psxequities.totalview.itch.v5.0.nearprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.totalview.itch.v5.0.operationalhaltaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.totalview.itch.v5.0.packet", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.totalview.itch.v5.0.packetheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.psxequities.totalview.itch.v5.0.pairedshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.payload = ProtoField.new("Payload", "nasdaq.psxequities.totalview.itch.v5.0.payload", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.price = ProtoField.new("Price", "nasdaq.psxequities.totalview.itch.v5.0.price", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.psxequities.totalview.itch.v5.0.pricevariationindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.psxequities.totalview.itch.v5.0.primarymarketmaker", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.printable = ProtoField.new("Printable", "nasdaq.psxequities.totalview.itch.v5.0.printable", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.totalview.itch.v5.0.reason", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.totalview.itch.v5.0.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reserved = ProtoField.new("Reserved", "nasdaq.psxequities.totalview.itch.v5.0.reserved", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.totalview.itch.v5.0.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.totalview.itch.v5.0.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.totalview.itch.v5.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.session = ProtoField.new("Session", "nasdaq.psxequities.totalview.itch.v5.0.session", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.totalview.itch.v5.0.shares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.totalview.itch.v5.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.totalview.itch.v5.0.stock", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.psxequities.totalview.itch.v5.0.stocklocate", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.totalview.itch.v5.0.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psxequities.totalview.itch.v5.0.tradingstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.upperauctioncollarprice", ftypes.DOUBLE)

-- Nasdaq PsxEquities TotalView Itch 5.0 messages
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.addordernompidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.addorderwithmpidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.brokentrademessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.crosstrademessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.psxequities.totalview.itch.v5.0.luldauctioncollarmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.psxequities.totalview.itch.v5.0.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.totalview.itch.v5.0.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.psxequities.totalview.itch.v5.0.mwcbstatuslevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.totalview.itch.v5.0.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.psxequities.totalview.itch.v5.0.ordercancelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.psxequities.totalview.itch.v5.0.orderdeletemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.psxequities.totalview.itch.v5.0.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.psxequities.totalview.itch.v5.0.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.psxequities.totalview.itch.v5.0.orderreplacemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.totalview.itch.v5.0.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.totalview.itch.v5.0.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.totalview.itch.v5.0.systemeventmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.trade_message_non_cross = ProtoField.new("Trade Message Non Cross", "nasdaq.psxequities.totalview.itch.v5.0.trademessagenoncross", ftypes.STRING)

-- Nasdaq PsxEquities TotalView Itch 5.0 generated fields
omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.totalview.itch.v5.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities TotalView Itch 5.0 Element Dissection Options
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

-- Register Nasdaq PsxEquities TotalView Itch 5.0 Show Options
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message = Pref.bool("Show Add Order No Mpid Attribution Message", show.add_order_no_mpid_attribution_message, "Parse and add Add Order No Mpid Attribution Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message = Pref.bool("Show Add Order With Mpid Attribution Message", show.add_order_with_mpid_attribution_message, "Parse and add Add Order With Mpid Attribution Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_luld_auction_collar_message = Pref.bool("Show Luld Auction Collar Message", show.luld_auction_collar_message, "Parse and add Luld Auction Collar Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_status_level_message = Pref.bool("Show Mwcb Status Level Message", show.mwcb_status_level_message, "Parse and add Mwcb Status Level Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_trade_message_non_cross = Pref.bool("Show Trade Message Non Cross", show.trade_message_non_cross, "Parse and add Trade Message Non Cross to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_psxequities_totalview_itch_v5_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_mpid_attribution_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message then
    show.add_order_no_mpid_attribution_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_no_mpid_attribution_message
    changed = true
  end
  if show.add_order_with_mpid_attribution_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message then
    show.add_order_with_mpid_attribution_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_add_order_with_mpid_attribution_message
    changed = true
  end
  if show.broken_trade_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_cross_trade_message then
    show.cross_trade_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_cross_trade_message
    changed = true
  end
  if show.luld_auction_collar_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_luld_auction_collar_message then
    show.luld_auction_collar_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_luld_auction_collar_message
    changed = true
  end
  if show.market_participant_position_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_market_participant_position_message then
    show.market_participant_position_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message then
    show.message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_level_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_status_level_message then
    show.mwcb_status_level_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_mwcb_status_level_message
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.operational_halt_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_operational_halt_message then
    show.operational_halt_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_operational_halt_message
    changed = true
  end
  if show.order_cancel_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_delete_message then
    show.order_delete_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_message then
    show.order_executed_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_replace_message then
    show.order_replace_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet then
    show.packet = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_directory_message then
    show.stock_directory_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_system_event_message
    changed = true
  end
  if show.trade_message_non_cross ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_trade_message_non_cross then
    show.trade_message_non_cross = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_trade_message_non_cross
    changed = true
  end
  if show.payload ~= omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_payload then
    show.payload = omi_nasdaq_psxequities_totalview_itch_v5_0.prefs.show_payload
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
-- Dissect Nasdaq PsxEquities TotalView Itch 5.0
-----------------------------------------------------------------------

-- Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_psxequities_totalview_itch_v5_0.cross_type = {}

-- Size: Cross Type
nasdaq_psxequities_totalview_itch_v5_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_psxequities_totalview_itch_v5_0.cross_type.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_psxequities_totalview_itch_v5_0.near_price = {}

-- Size: Near Price
nasdaq_psxequities_totalview_itch_v5_0.near_price.size = 4

-- Display: Near Price
nasdaq_psxequities_totalview_itch_v5_0.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_psxequities_totalview_itch_v5_0.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_psxequities_totalview_itch_v5_0.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.near_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.near_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_psxequities_totalview_itch_v5_0.far_price = {}

-- Size: Far Price
nasdaq_psxequities_totalview_itch_v5_0.far_price.size = 4

-- Display: Far Price
nasdaq_psxequities_totalview_itch_v5_0.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_psxequities_totalview_itch_v5_0.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_psxequities_totalview_itch_v5_0.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.far_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_totalview_itch_v5_0.stock = {}

-- Size: Stock
nasdaq_psxequities_totalview_itch_v5_0.stock.size = 8

-- Display: Stock
nasdaq_psxequities_totalview_itch_v5_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_totalview_itch_v5_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_psxequities_totalview_itch_v5_0.paired_shares = {}

-- Size: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_totalview_itch_v5_0.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_totalview_itch_v5_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_totalview_itch_v5_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_totalview_itch_v5_0.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_psxequities_totalview_itch_v5_0.stock_locate = {}

-- Size: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.paired_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.far_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.near_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.cross_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_psxequities_totalview_itch_v5_0.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_psxequities_totalview_itch_v5_0.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_psxequities_totalview_itch_v5_0.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_psxequities_totalview_itch_v5_0.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_psxequities_totalview_itch_v5_0.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_psxequities_totalview_itch_v5_0.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_psxequities_totalview_itch_v5_0.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.net_order_imbalance_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
nasdaq_psxequities_totalview_itch_v5_0.match_number = {}

-- Size: Match Number
nasdaq_psxequities_totalview_itch_v5_0.match_number.size = 8

-- Display: Match Number
nasdaq_psxequities_totalview_itch_v5_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.match_number.size

-- Display: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Price
nasdaq_psxequities_totalview_itch_v5_0.cross_price = {}

-- Size: Cross Price
nasdaq_psxequities_totalview_itch_v5_0.cross_price.size = 4

-- Display: Cross Price
nasdaq_psxequities_totalview_itch_v5_0.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_psxequities_totalview_itch_v5_0.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_psxequities_totalview_itch_v5_0.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.cross_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_psxequities_totalview_itch_v5_0.cross_shares = {}

-- Size: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.cross_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.cross_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.cross_type.size

-- Display: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_psxequities_totalview_itch_v5_0.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_psxequities_totalview_itch_v5_0.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
nasdaq_psxequities_totalview_itch_v5_0.price = {}

-- Size: Price
nasdaq_psxequities_totalview_itch_v5_0.price.size = 4

-- Display: Price
nasdaq_psxequities_totalview_itch_v5_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_psxequities_totalview_itch_v5_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_psxequities_totalview_itch_v5_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.price, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_totalview_itch_v5_0.shares = {}

-- Size: Shares
nasdaq_psxequities_totalview_itch_v5_0.shares.size = 4

-- Display: Shares
nasdaq_psxequities_totalview_itch_v5_0.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_totalview_itch_v5_0.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross = {}

-- Size: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.match_number.size

-- Display: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.dissect = function(buffer, offset, packet, parent)
  if show.trade_message_non_cross then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.trade_message_non_cross, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.fields(buffer, offset, packet, parent)
  end
end

-- New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.price.size

-- Display: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size

-- Display: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_psxequities_totalview_itch_v5_0.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Price
nasdaq_psxequities_totalview_itch_v5_0.execution_price = {}

-- Size: Execution Price
nasdaq_psxequities_totalview_itch_v5_0.execution_price.size = 4

-- Display: Execution Price
nasdaq_psxequities_totalview_itch_v5_0.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_psxequities_totalview_itch_v5_0.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_psxequities_totalview_itch_v5_0.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.execution_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_psxequities_totalview_itch_v5_0.printable = {}

-- Size: Printable
nasdaq_psxequities_totalview_itch_v5_0.printable.size = 1

-- Display: Printable
nasdaq_psxequities_totalview_itch_v5_0.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_psxequities_totalview_itch_v5_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_psxequities_totalview_itch_v5_0.executed_shares = {}

-- Size: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.printable.size + 
  nasdaq_psxequities_totalview_itch_v5_0.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_psxequities_totalview_itch_v5_0.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_psxequities_totalview_itch_v5_0.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.match_number.size

-- Display: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Attribution
nasdaq_psxequities_totalview_itch_v5_0.attribution = {}

-- Size: Attribution
nasdaq_psxequities_totalview_itch_v5_0.attribution.size = 4

-- Display: Attribution
nasdaq_psxequities_totalview_itch_v5_0.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_psxequities_totalview_itch_v5_0.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.attribution, range, value, display)

  return offset + length, value
end

-- Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message = {}

-- Size: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.attribution.size

-- Display: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0.price.dissect(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_psxequities_totalview_itch_v5_0.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_with_mpid_attribution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message = {}

-- Size: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.price.size

-- Display: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_no_mpid_attribution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_totalview_itch_v5_0.market_code = {}

-- Size: Market Code
nasdaq_psxequities_totalview_itch_v5_0.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_totalview_itch_v5_0.market_code.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.market_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_psxequities_totalview_itch_v5_0.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_psxequities_totalview_itch_v5_0.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.operational_halt_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message = {}

-- Size: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.size

-- Display: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, upper_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, lower_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_extension = nasdaq_psxequities_totalview_itch_v5_0.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.luld_auction_collar_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Breached Level
nasdaq_psxequities_totalview_itch_v5_0.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_totalview_itch_v5_0.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_totalview_itch_v5_0.breached_level.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message = {}

-- Size: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.breached_level.size

-- Display: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_psxequities_totalview_itch_v5_0.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_status_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Level 3
nasdaq_psxequities_totalview_itch_v5_0.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_totalview_itch_v5_0.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_totalview_itch_v5_0.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_totalview_itch_v5_0.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_totalview_itch_v5_0.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0.level_3.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_totalview_itch_v5_0.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_totalview_itch_v5_0.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_totalview_itch_v5_0.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_totalview_itch_v5_0.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_totalview_itch_v5_0.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0.level_2.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_totalview_itch_v5_0.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_totalview_itch_v5_0.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_totalview_itch_v5_0.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_totalview_itch_v5_0.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_totalview_itch_v5_0.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0.level_1.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.level_1.size + 
  nasdaq_psxequities_totalview_itch_v5_0.level_2.size + 
  nasdaq_psxequities_totalview_itch_v5_0.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_psxequities_totalview_itch_v5_0.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_psxequities_totalview_itch_v5_0.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_psxequities_totalview_itch_v5_0.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_decline_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant State
nasdaq_psxequities_totalview_itch_v5_0.market_participant_state = {}

-- Size: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_psxequities_totalview_itch_v5_0.mpid = {}

-- Size: Mpid
nasdaq_psxequities_totalview_itch_v5_0.mpid.size = 4

-- Display: Mpid
nasdaq_psxequities_totalview_itch_v5_0.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_psxequities_totalview_itch_v5_0.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.mpid.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.size + 
  nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.size + 
  nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_psxequities_totalview_itch_v5_0.mpid.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_psxequities_totalview_itch_v5_0.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = nasdaq_psxequities_totalview_itch_v5_0.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_psxequities_totalview_itch_v5_0.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.market_participant_position_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Locate Code
nasdaq_psxequities_totalview_itch_v5_0.locate_code = {}

-- Size: Locate Code
nasdaq_psxequities_totalview_itch_v5_0.locate_code.size = 2

-- Display: Locate Code
nasdaq_psxequities_totalview_itch_v5_0.locate_code.display = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_psxequities_totalview_itch_v5_0.locate_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.locate_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.locate_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: 2 Byte Unsigned Fixed Width Integer
  index, locate_code = nasdaq_psxequities_totalview_itch_v5_0.locate_code.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_psxequities_totalview_itch_v5_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
nasdaq_psxequities_totalview_itch_v5_0.reason = {}

-- Size: Reason
nasdaq_psxequities_totalview_itch_v5_0.reason.size = 4

-- Display: Reason
nasdaq_psxequities_totalview_itch_v5_0.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_totalview_itch_v5_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_psxequities_totalview_itch_v5_0.reserved = {}

-- Size: Reserved
nasdaq_psxequities_totalview_itch_v5_0.reserved.size = 1

-- Display: Reserved
nasdaq_psxequities_totalview_itch_v5_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_psxequities_totalview_itch_v5_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_psxequities_totalview_itch_v5_0.trading_state = {}

-- Size: Trading State
nasdaq_psxequities_totalview_itch_v5_0.trading_state.size = 1

-- Display: Trading State
nasdaq_psxequities_totalview_itch_v5_0.trading_state.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.trading_state.size + 
  nasdaq_psxequities_totalview_itch_v5_0.reserved.size + 
  nasdaq_psxequities_totalview_itch_v5_0.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 4 values
  index, trading_state = nasdaq_psxequities_totalview_itch_v5_0.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = nasdaq_psxequities_totalview_itch_v5_0.reserved.dissect(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_psxequities_totalview_itch_v5_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_totalview_itch_v5_0.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0.etp_flag.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Yes (Y)"
  end
  if value == "N" then
    return "Ipo Flag: No (N)"
  end
  if value == " " then
    return "Ipo Flag: Na (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_psxequities_totalview_itch_v5_0.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_totalview_itch_v5_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_totalview_itch_v5_0.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_totalview_itch_v5_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_totalview_itch_v5_0.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Yes (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_totalview_itch_v5_0.market_category = {}

-- Size: Market Category
nasdaq_psxequities_totalview_itch_v5_0.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_totalview_itch_v5_0.market_category.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0.market_category.size + 
  nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.size + 
  nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.size + 
  nasdaq_psxequities_totalview_itch_v5_0.issue_classification.size + 
  nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0.authenticity.size + 
  nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.size + 
  nasdaq_psxequities_totalview_itch_v5_0.etp_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.size + 
  nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_psxequities_totalview_itch_v5_0.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_psxequities_totalview_itch_v5_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_psxequities_totalview_itch_v5_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_psxequities_totalview_itch_v5_0.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = nasdaq_psxequities_totalview_itch_v5_0.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = nasdaq_psxequities_totalview_itch_v5_0.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_psxequities_totalview_itch_v5_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_psxequities_totalview_itch_v5_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_psxequities_totalview_itch_v5_0.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_psxequities_totalview_itch_v5_0.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_psxequities_totalview_itch_v5_0.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_psxequities_totalview_itch_v5_0.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_psxequities_totalview_itch_v5_0.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_psxequities_totalview_itch_v5_0.event_code = {}

-- Size: Event Code
nasdaq_psxequities_totalview_itch_v5_0.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_totalview_itch_v5_0.event_code.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_psxequities_totalview_itch_v5_0.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_totalview_itch_v5_0.system_event_message.size =
  nasdaq_psxequities_totalview_itch_v5_0.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0.event_code.size

-- Display: System Event Message
nasdaq_psxequities_totalview_itch_v5_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_totalview_itch_v5_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_psxequities_totalview_itch_v5_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_totalview_itch_v5_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_totalview_itch_v5_0.payload = {}

-- Size: Payload
nasdaq_psxequities_totalview_itch_v5_0.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_totalview_itch_v5_0.system_event_message.size
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.size
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.size
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.size
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.size
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.size
  end
  -- Size of Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.size
  end
  -- Size of Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.size
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.size
  end
  -- Size of Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.size
  end
  -- Size of Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.size
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.size
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.size
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.size
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.size
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.size
  end
  -- Size of Trade Message Non Cross
  if message_type == "P" then
    return nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.size
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.size
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.size
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.size
  end

  return 0
end

-- Display: Payload
nasdaq_psxequities_totalview_itch_v5_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_psxequities_totalview_itch_v5_0.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_totalview_itch_v5_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_totalview_itch_v5_0.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_totalview_itch_v5_0.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_totalview_itch_v5_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_psxequities_totalview_itch_v5_0.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_psxequities_totalview_itch_v5_0.mwcb_status_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_psxequities_totalview_itch_v5_0.luld_auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_totalview_itch_v5_0.operational_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_no_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_psxequities_totalview_itch_v5_0.add_order_with_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_psxequities_totalview_itch_v5_0.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Non Cross
  if message_type == "P" then
    return nasdaq_psxequities_totalview_itch_v5_0.trade_message_non_cross.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_psxequities_totalview_itch_v5_0.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_psxequities_totalview_itch_v5_0.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_psxequities_totalview_itch_v5_0.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_psxequities_totalview_itch_v5_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_psxequities_totalview_itch_v5_0.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_psxequities_totalview_itch_v5_0.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_psxequities_totalview_itch_v5_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.payload, range, display)

  return nasdaq_psxequities_totalview_itch_v5_0.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_psxequities_totalview_itch_v5_0.message_type = {}

-- Size: Message Type
nasdaq_psxequities_totalview_itch_v5_0.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_totalview_itch_v5_0.message_type.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_totalview_itch_v5_0.message_length = {}

-- Size: Message Length
nasdaq_psxequities_totalview_itch_v5_0.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_totalview_itch_v5_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_totalview_itch_v5_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_psxequities_totalview_itch_v5_0.message_header = {}

-- Size: Message Header
nasdaq_psxequities_totalview_itch_v5_0.message_header.size =
  nasdaq_psxequities_totalview_itch_v5_0.message_length.size + 
  nasdaq_psxequities_totalview_itch_v5_0.message_type.size

-- Display: Message Header
nasdaq_psxequities_totalview_itch_v5_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_totalview_itch_v5_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_totalview_itch_v5_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 20 values
  index, message_type = nasdaq_psxequities_totalview_itch_v5_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_totalview_itch_v5_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_totalview_itch_v5_0.message = {}

-- Display: Message
nasdaq_psxequities_totalview_itch_v5_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_totalview_itch_v5_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psxequities_totalview_itch_v5_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 20 branches
  index = nasdaq_psxequities_totalview_itch_v5_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_totalview_itch_v5_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_itch_v5_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_totalview_itch_v5_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_itch_v5_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_psxequities_totalview_itch_v5_0.message_count = {}

-- Size: Message Count
nasdaq_psxequities_totalview_itch_v5_0.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_totalview_itch_v5_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_totalview_itch_v5_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_totalview_itch_v5_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_totalview_itch_v5_0.session = {}

-- Size: Session
nasdaq_psxequities_totalview_itch_v5_0.session.size = 10

-- Display: Session
nasdaq_psxequities_totalview_itch_v5_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_totalview_itch_v5_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0.session.size
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

  local display = nasdaq_psxequities_totalview_itch_v5_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_psxequities_totalview_itch_v5_0.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_totalview_itch_v5_0.packet_header.size =
  nasdaq_psxequities_totalview_itch_v5_0.session.size + 
  nasdaq_psxequities_totalview_itch_v5_0.sequence_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0.message_count.size

-- Display: Packet Header
nasdaq_psxequities_totalview_itch_v5_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_totalview_itch_v5_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_totalview_itch_v5_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_totalview_itch_v5_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_totalview_itch_v5_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_totalview_itch_v5_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_totalview_itch_v5_0.packet = {}

-- Dissect Packet
nasdaq_psxequities_totalview_itch_v5_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_totalview_itch_v5_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_psxequities_totalview_itch_v5_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_totalview_itch_v5_0.init()
end

-- Dissector for Nasdaq PsxEquities TotalView Itch 5.0
function omi_nasdaq_psxequities_totalview_itch_v5_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_totalview_itch_v5_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0, buffer(), omi_nasdaq_psxequities_totalview_itch_v5_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_totalview_itch_v5_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_psxequities_totalview_itch_v5_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_psxequities_totalview_itch_v5_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Itch 5.0
local function omi_nasdaq_psxequities_totalview_itch_v5_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_itch_v5_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_itch_v5_0
  omi_nasdaq_psxequities_totalview_itch_v5_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities TotalView Itch 5.0
omi_nasdaq_psxequities_totalview_itch_v5_0:register_heuristic("udp", omi_nasdaq_psxequities_totalview_itch_v5_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
