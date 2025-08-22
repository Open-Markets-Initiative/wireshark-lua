-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 Protocol
local nasdaq_nsmequities_totalview_itch_v5_0_2017 = Proto("Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.Lua", "Nasdaq NsmEquities TotalView Itch 5.0.2017")

-- Component Tables
local show = {}
local format = {}
local nasdaq_nsmequities_totalview_itch_v5_0_2017_display = {}
local nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect = {}
local nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 Fields
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.itch.v5.0.2017.attribution", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarextension", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarreferenceprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.totalview.itch.v5.0.2017.authenticity", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.totalview.itch.v5.0.2017.breachedlevel", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.buysellindicator", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.canceledshares", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossshares", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstype", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.currentreferenceprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpflag", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpleveragefactor", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v5.0.2017.eventcode", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.executedshares", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.executionprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.farprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.financialstatusindicator", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalancedirection", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalanceshares", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.interestflag", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.inverseindicator", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoflag", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotationreleasequalifier", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotationreleasetime", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.totalview.itch.v5.0.2017.issueclassification", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.issuesubtype", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level1", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level2", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level3", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.nsmequities.totalview.itch.v5.0.2017.locatecode", ftypes.UINT16)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.lowerauctioncollarprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.totalview.itch.v5.0.2017.luldreferencepricetier", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketcategory", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketmakermode", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketparticipantstate", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.message", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagecount", ftypes.UINT16)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messageheader", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagelength", ftypes.UINT16)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagetype", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mpid", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.nearprice", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.neworderreferencenumber", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.originalorderreferencenumber", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2017.packet", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v5.0.2017.packetheader", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.pairedshares", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.totalview.itch.v5.0.2017.payload", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.price", ftypes.DOUBLE)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.pricevariationindicator", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.totalview.itch.v5.0.2017.primarymarketmaker", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.printable = ProtoField.new("Printable", "nasdaq.nsmequities.totalview.itch.v5.0.2017.printable", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.totalview.itch.v5.0.2017.reason", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.totalview.itch.v5.0.2017.regshoaction", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reserved = ProtoField.new("Reserved", "nasdaq.nsmequities.totalview.itch.v5.0.2017.reserved", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsize", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsonly", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.sequencenumber", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v5.0.2017.session", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares", ftypes.UINT32)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.shortsalethresholdindicator", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate", ftypes.UINT16)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp", ftypes.UINT64)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber", ftypes.UINT16)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.totalview.itch.v5.0.2017.tradingstate", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.upperauctioncollarprice", ftypes.DOUBLE)

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 messages
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.addordernompidattributionmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.addorderwithmpidattributionmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.brokentrademessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstrademessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quoting_period_update = ProtoField.new("Ipo Quoting Period Update", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotingperiodupdate", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.luldauctioncollarmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketparticipantpositionmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mwcbdeclinelevelmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mwcbstatuslevelmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.netorderimbalanceindicatormessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.non_cross_trade_message = ProtoField.new("Non Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.noncrosstrademessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ordercancelmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderdeletemessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderexecutedmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderexecutedwithpricemessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreplacemessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.retail_interest_message = ProtoField.new("Retail Interest Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.retailinterestmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stockdirectorymessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocktradingactionmessage", ftypes.STRING)
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 generated fields
nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 Element Dissection Options
show.add_order_no_mpid_attribution_message = true
show.add_order_with_mpid_attribution_message = true
show.broken_trade_message = true
show.cross_trade_message = true
show.ipo_quoting_period_update = true
show.luld_auction_collar_message = true
show.market_participant_position_message = true
show.message = true
show.message_header = true
show.mwcb_decline_level_message = true
show.mwcb_status_level_message = true
show.net_order_imbalance_indicator_message = true
show.non_cross_trade_message = true
show.order_cancel_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replace_message = true
show.packet = true
show.packet_header = true
show.reg_sho_short_sale_price_test_restricted_indicator_message = true
show.retail_interest_message = true
show.stock_directory_message = true
show.stock_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq NsmEquities TotalView Itch 5.0.2017 Show Options
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message = Pref.bool("Show Add Order No Mpid Attribution Message", show.add_order_no_mpid_attribution_message, "Parse and add Add Order No Mpid Attribution Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message = Pref.bool("Show Add Order With Mpid Attribution Message", show.add_order_with_mpid_attribution_message, "Parse and add Add Order With Mpid Attribution Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update = Pref.bool("Show Ipo Quoting Period Update", show.ipo_quoting_period_update, "Parse and add Ipo Quoting Period Update to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message = Pref.bool("Show Luld Auction Collar Message", show.luld_auction_collar_message, "Parse and add Luld Auction Collar Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message = Pref.bool("Show Mwcb Status Level Message", show.mwcb_status_level_message, "Parse and add Mwcb Status Level Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message = Pref.bool("Show Non Cross Trade Message", show.non_cross_trade_message, "Parse and add Non Cross Trade Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message = Pref.bool("Show Retail Interest Message", show.retail_interest_message, "Parse and add Retail Interest Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_mpid_attribution_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message then
    show.add_order_no_mpid_attribution_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message
    changed = true
  end
  if show.add_order_with_mpid_attribution_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message then
    show.add_order_with_mpid_attribution_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message
    changed = true
  end
  if show.broken_trade_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message then
    show.broken_trade_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message then
    show.cross_trade_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message
    changed = true
  end
  if show.ipo_quoting_period_update ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update then
    show.ipo_quoting_period_update = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update
    changed = true
  end
  if show.luld_auction_collar_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message then
    show.luld_auction_collar_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message
    changed = true
  end
  if show.market_participant_position_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message then
    show.market_participant_position_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message then
    show.message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header then
    show.message_header = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_level_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message then
    show.mwcb_status_level_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.non_cross_trade_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message then
    show.non_cross_trade_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message
    changed = true
  end
  if show.order_cancel_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message then
    show.order_cancel_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message then
    show.order_delete_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message then
    show.order_executed_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message then
    show.order_replace_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet then
    show.packet = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header then
    show.packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.retail_interest_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message then
    show.retail_interest_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message then
    show.system_event_message = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload then
    show.payload = nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload
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
-- Dissect Nasdaq NsmEquities TotalView Itch 5.0.2017
-----------------------------------------------------------------------

-- Size: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.interest_flag = 1

-- Display: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.interest_flag = function(value)
  if value == "B" then
    return "Interest Flag: Buy Side Rpi Orders Available (B)"
  end
  if value == "S" then
    return "Interest Flag: Sell Side Rpi Orders Available (S)"
  end
  if value == "A" then
    return "Interest Flag: Both Sides Rpi Orders Available (A)"
  end
  if value == "N" then
    return "Interest Flag: No Rpi Orders Available (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.interest_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.interest_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.interest_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock = 8

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Size: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate = 2

-- Display: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_locate = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_locate(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.retail_interest_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.interest_flag

  return index
end

-- Display: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.retail_interest_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.retail_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index, interest_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.interest_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.retail_interest_message = function(buffer, offset, packet, parent)
  if show.retail_interest_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.retail_interest_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.retail_interest_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.retail_interest_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.retail_interest_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price_variation_indicator = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.price_variation_indicator = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price_variation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_type = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.current_reference_price = 4

-- Display: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.current_reference_price = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
translate.current_reference_price = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.current_reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.current_reference_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.current_reference_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.current_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.near_price = 4

-- Display: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.near_price = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
translate.near_price = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.near_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.near_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.near_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.near_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.near_price, range, value, display)

  return offset + length, value
end

-- Size: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.far_price = 4

-- Display: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.far_price = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
translate.far_price = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.far_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.far_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.far_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.far_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.imbalance_direction = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_shares = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Size: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.paired_shares = 8

-- Display: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.paired_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.net_order_imbalance_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.paired_shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.imbalance_direction

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.far_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.near_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.current_reference_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_type

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price_variation_indicator

  return index
end

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.net_order_imbalance_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.net_order_imbalance_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.paired_shares(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.far_price(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.near_price(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.current_reference_price(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.net_order_imbalance_indicator_message = function(buffer, offset, packet, parent)
  if show.net_order_imbalance_indicator_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.net_order_imbalance_indicator_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.net_order_imbalance_indicator_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number = 8

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.match_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.broken_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number

  return index
end

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.broken_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.broken_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.broken_trade_message = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.broken_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.broken_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.broken_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_price = 4

-- Display: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_price = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
translate.cross_price = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.cross_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Size: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_shares = 8

-- Display: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_shares = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_type

  return index
end

-- Display: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_trade_message = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.cross_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price = 4

-- Display: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares = 4

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.shares, range, value, display)

  return offset + length, value
end

-- Size: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.buy_sell_indicator = 1

-- Display: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.buy_sell_indicator = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.buy_sell_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.buy_sell_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.buy_sell_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number = 8

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_reference_number = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.non_cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.buy_sell_indicator

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number

  return index
end

-- Display: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.non_cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.non_cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.non_cross_trade_message = function(buffer, offset, packet, parent)
  if show.non_cross_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.non_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.non_cross_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.non_cross_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.non_cross_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.new_order_reference_number = 8

-- Display: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.new_order_reference_number = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.new_order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.new_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.new_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.original_order_reference_number = 8

-- Display: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.original_order_reference_number = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.original_order_reference_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.original_order_reference_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.original_order_reference_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_replace_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.original_order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.new_order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price

  return index
end

-- Display: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_replace_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.original_order_reference_number(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.new_order_reference_number(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.shares(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_replace_message = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_replace_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_replace_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_replace_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  return index
end

-- Display: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_delete_message = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.canceled_shares = 4

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.canceled_shares = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.canceled_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.canceled_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.canceled_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.canceled_shares

  return index
end

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.canceled_shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_cancel_message = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_cancel_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_cancel_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_cancel_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.execution_price = 4

-- Display: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.execution_price = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
translate.execution_price = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.execution_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.execution_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.execution_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.execution_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Size: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.printable = 1

-- Display: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.printable = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.printable = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.printable(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.executed_shares = 4

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.executed_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.executed_shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.printable

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.execution_price

  return index
end

-- Display: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_executed_with_price_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.printable(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.execution_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_with_price_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_executed_with_price_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_with_price_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.executed_shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.match_number

  return index
end

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.executed_shares(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.match_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.order_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.attribution = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.attribution = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.attribution
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.attribution(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.attribution, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.add_order_with_mpid_attribution_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.buy_sell_indicator

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.attribution

  return index
end

-- Display: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.add_order_with_mpid_attribution_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_with_mpid_attribution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.attribution(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_with_mpid_attribution_message = function(buffer, offset, packet, parent)
  if show.add_order_with_mpid_attribution_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_with_mpid_attribution_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.add_order_with_mpid_attribution_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_with_mpid_attribution_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_extension = 4

-- Display: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.auction_collar_extension = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.auction_collar_extension = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_extension
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.auction_collar_extension(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Size: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.lower_auction_collar_price = 4

-- Display: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.lower_auction_collar_price = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
translate.lower_auction_collar_price = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.lower_auction_collar_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.lower_auction_collar_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.lower_auction_collar_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.lower_auction_collar_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.upper_auction_collar_price = 4

-- Display: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.upper_auction_collar_price = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
translate.upper_auction_collar_price = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.upper_auction_collar_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.upper_auction_collar_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.upper_auction_collar_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.upper_auction_collar_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_reference_price = 4

-- Display: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.auction_collar_reference_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.luld_auction_collar_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_reference_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.upper_auction_collar_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.lower_auction_collar_price

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.auction_collar_extension

  return index
end

-- Display: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.luld_auction_collar_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_auction_collar_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Upper Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, upper_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.upper_auction_collar_price(buffer, index, packet, parent)

  -- Lower Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, lower_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.lower_auction_collar_price(buffer, index, packet, parent)

  -- Auction Collar Extension: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_extension = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.auction_collar_extension(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_auction_collar_message = function(buffer, offset, packet, parent)
  if show.luld_auction_collar_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_auction_collar_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.luld_auction_collar_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_auction_collar_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.add_order_no_mpid_attribution_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_reference_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.buy_sell_indicator

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.shares

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.price

  return index
end

-- Display: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.add_order_no_mpid_attribution_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_no_mpid_attribution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_reference_number(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.buy_sell_indicator(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_no_mpid_attribution_message = function(buffer, offset, packet, parent)
  if show.add_order_no_mpid_attribution_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_no_mpid_attribution_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.add_order_no_mpid_attribution_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_no_mpid_attribution_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_price = 4

-- Display: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_price = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
translate.ipo_price = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.ipo_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_qualifier = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quotation_release_qualifier = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quotation_release_qualifier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quotation_release_qualifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_time = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quotation_release_time = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quotation_release_time = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_time
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quotation_release_time(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quoting_period_update = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_time

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quotation_release_qualifier

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_price

  return index
end

-- Display: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quoting_period_update = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quoting_period_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quotation_release_time(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quotation_release_qualifier(buffer, index, packet, parent)

  -- Ipo Price: 4 Byte Unsigned Fixed Width Integer
  index, ipo_price = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quoting_period_update = function(buffer, offset, packet, parent)
  if show.ipo_quoting_period_update then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quoting_period_update, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quoting_period_update_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_quoting_period_update(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quoting_period_update_fields(buffer, offset, packet, element)
  end
end

-- Size: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.breached_level = 1

-- Display: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.breached_level = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.breached_level = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.breached_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.breached_level(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mwcb_status_level_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.breached_level

  return index
end

-- Display: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mwcb_status_level_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_status_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.breached_level(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_status_level_message = function(buffer, offset, packet, parent)
  if show.mwcb_status_level_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_status_level_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mwcb_status_level_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_status_level_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_3 = 8

-- Display: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_3 = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
translate.level_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_3
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_3(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_3, range, value, display)

  return offset + length, value
end

-- Size: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_2 = 8

-- Display: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_2 = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
translate.level_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_2
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_2(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_2, range, value, display)

  return offset + length, value
end

-- Size: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_1 = 8

-- Display: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_1 = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
translate.level_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_1
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_1(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mwcb_decline_level_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_1

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_2

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.level_3

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mwcb_decline_level_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_decline_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_1(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_2(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_decline_level_message = function(buffer, offset, packet, parent)
  if show.mwcb_decline_level_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mwcb_decline_level_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_participant_state = 1

-- Display: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_participant_state = function(value)
  if value == "A" then
    return "Market Participant State: Active (A)"
  end
  if value == "E" then
    return "Market Participant State: Excused (E)"
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_participant_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_participant_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Size: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_maker_mode = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_maker_mode = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_maker_mode = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_maker_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_maker_mode(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Size: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.primary_market_maker = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.primary_market_maker = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.primary_market_maker = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.primary_market_maker
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.primary_market_maker(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Size: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mpid = 4

-- Display: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mpid = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mpid
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mpid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_participant_position_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mpid

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.primary_market_maker

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_maker_mode

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_participant_state

  return index
end

-- Display: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_participant_position_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_position_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mpid(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.primary_market_maker(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_maker_mode(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_position_message = function(buffer, offset, packet, parent)
  if show.market_participant_position_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_position_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_participant_position_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_position_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reg_sho_action = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Size: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.locate_code = 2

-- Display: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.locate_code = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.locate_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.locate_code
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.locate_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.locate_code

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reg_sho_short_sale_price_test_restricted_indicator_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: 2 Byte Unsigned Fixed Width Integer
  index, locate_code = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.locate_code(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_short_sale_price_test_restricted_indicator_message = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reg_sho_short_sale_price_test_restricted_indicator_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_short_sale_price_test_restricted_indicator_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reason = 4

-- Display: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reason = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reserved = 1

-- Display: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reserved = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.reserved(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.trading_state = 1

-- Display: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.trading_state = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.trading_state

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reserved

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reason

  return index
end

-- Display: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 4 values
  index, trading_state = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.trading_state(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reserved(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_trading_action_message = function(buffer, offset, packet, parent)
  if show.stock_trading_action_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_trading_action_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_trading_action_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_trading_action_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.inverse_indicator = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_flag = 1

-- Display: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.etp_flag = function(value)
  if value == "Y" then
    return "Etp Flag: Etp (Y)"
  end
  if value == "N" then
    return "Etp Flag: Not Etp (N)"
  end
  if value == " " then
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.luld_reference_price_tier = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Available (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_flag = 1

-- Display: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_flag = function(value)
  if value == "Y" then
    return "Ipo Flag: Set Up For Ipo Realease (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Set Up For Ipo Realease (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.short_sale_threshold_indicator = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_sub_type = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.issue_sub_type = function(value)
  if value == "A" then
    return "Issue Sub Type: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Sub Type: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Sub Type: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Sub Type: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Sub Type: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Sub Type: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Sub Type: Currency Trust Shares (CL)"
  end
  if value == "CM" then
    return "Issue Sub Type: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Sub Type: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Sub Type: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Sub Type: Commodity­ Currency (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf­ Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity (EI)"
  end
  if value == "EM" then
    return "Issue Sub Type: Next Shares Exchange (EM)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent (L)"
  end
  if value == "W" then
    return "Issue Sub Type: Warrant (W)"
  end
  if value == "LL" then
    return "Issue Sub Type: Identifies Securities (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn (ML)"
  end
  if value == "MT" then
    return "Issue Sub Type: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Sub Type: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Sub Type: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Sub Type: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Sub Type: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Sub Type: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Sub Type: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Sub Type: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Sub Type: Commodity Redeemable (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity­ Redeemable (RU)"
  end
  if value == "S" then
    return "Issue Sub Type: Seed (S)"
  end
  if value == "SC" then
    return "Issue Sub Type: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Sub Type: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Sub Type: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Sub Type: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Sub Type: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Sub Type: Portal (U)"
  end
  if value == "V" then
    return "Issue Sub Type: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Sub Type: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Sub Type: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Sub Type: Trust (X)"
  end
  if value == "Y" then
    return "Issue Sub Type: Other (Y)"
  end
  if value == "Z" then
    return "Issue Sub Type: Not Applicable (Z)"
  end

  return "Issue Sub Type: Unknown("..value..")"
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.issue_sub_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_sub_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.issue_sub_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_classification = 1

-- Display: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.issue_classification = function(value)
  if value == "A" then
    return "Issue Classification: American Depositary Share (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository (F)"
  end
  if value == "I" then
    return "Issue Classification: 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary Share (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible (T)"
  end
  if value == "U" then
    return "Issue Classification: Unit (U)"
  end
  if value == "V" then
    return "Issue Classification: Units Benif Int (V)"
  end
  if value == "W" then
    return "Issue Classification: Warrant (W)"
  end

  return "Issue Classification: Unknown("..value..")"
end

-- Dissect: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lots_only = 1

-- Display: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lot_size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.financial_status_indicator = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_category = 1

-- Display: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_category = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_category

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.financial_status_indicator

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lot_size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.round_lots_only

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_classification

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.issue_sub_type

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.authenticity

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.short_sale_threshold_indicator

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_flag

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.luld_reference_price_tier

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_flag

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.etp_leverage_factor

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String Enum with 16 values
  index, issue_classification = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String Enum with 59 values
  index, issue_sub_type = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.issue_sub_type(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.stock_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.event_code = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.event_code = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_locate

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.tracking_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.timestamp

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_locate(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.stock_trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset)
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.market_participant_position_message(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mwcb_decline_level_message(buffer, offset)
  end
  -- Size of Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.mwcb_status_level_message(buffer, offset)
  end
  -- Size of Ipo Quoting Period Update
  if message_type == "K" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.ipo_quoting_period_update(buffer, offset)
  end
  -- Size of Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.add_order_no_mpid_attribution_message(buffer, offset)
  end
  -- Size of Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.luld_auction_collar_message(buffer, offset)
  end
  -- Size of Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.add_order_with_mpid_attribution_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_cancel_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.order_replace_message(buffer, offset)
  end
  -- Size of Non Cross Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.non_cross_trade_message(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.broken_trade_message(buffer, offset)
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.net_order_imbalance_indicator_message(buffer, offset)
  end
  -- Size of Retail Interest Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.retail_interest_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.stock_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.reg_sho_short_sale_price_test_restricted_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.market_participant_position_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.mwcb_status_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update
  if message_type == "K" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.ipo_quoting_period_update(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_no_mpid_attribution_message(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.luld_auction_collar_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.add_order_with_mpid_attribution_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Non Cross Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.non_cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.broken_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.net_order_imbalance_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Interest Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.retail_interest_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.payload, range, display)

  return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_type = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_type = function(value)
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
  if value == "K" then
    return "Message Type: Ipo Quoting Period Update (K)"
  end
  if value == "A" then
    return "Message Type: Add Order No Mpid Attribution Message (A)"
  end
  if value == "J" then
    return "Message Type: Luld Auction Collar Message (J)"
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
    return "Message Type: Non Cross Trade Message (P)"
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
    return "Message Type: Retail Interest Message (N)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_length = 2

-- Display: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_length

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 21 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 21 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_count = 2

-- Display: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.sequence_number = 8

-- Display: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.session = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.session
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

  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.session

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.sequence_number

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017_size_of.message_count

  return index
end

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_nsmequities_totalview_itch_v5_0_2017.init()
end

-- Dissector for Nasdaq NsmEquities TotalView Itch 5.0.2017
function nasdaq_nsmequities_totalview_itch_v5_0_2017.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_nsmequities_totalview_itch_v5_0_2017.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_nsmequities_totalview_itch_v5_0_2017, buffer(), nasdaq_nsmequities_totalview_itch_v5_0_2017.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_totalview_itch_v5_0_2017_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_nsmequities_totalview_itch_v5_0_2017)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_nsmequities_totalview_itch_v5_0_2017_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2017
local function nasdaq_nsmequities_totalview_itch_v5_0_2017_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_nsmequities_totalview_itch_v5_0_2017_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_nsmequities_totalview_itch_v5_0_2017
  nasdaq_nsmequities_totalview_itch_v5_0_2017.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2017
nasdaq_nsmequities_totalview_itch_v5_0_2017:register_heuristic("udp", nasdaq_nsmequities_totalview_itch_v5_0_2017_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 5.0.2017
--   Date: Tuesday, September 12, 2017
--   Specification: NQTVITCHSpecification.pdf
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
