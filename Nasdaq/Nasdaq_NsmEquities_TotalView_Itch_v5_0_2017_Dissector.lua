-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 Protocol
local omi_nasdaq_nsmequities_totalview_itch_v5_0_2017 = Proto("Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.Lua", "Nasdaq NsmEquities TotalView Itch 5.0.2017")

-- Protocol table
local nasdaq_nsmequities_totalview_itch_v5_0_2017 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 Fields
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.attribution = ProtoField.new("Attribution", "nasdaq.nsmequities.totalview.itch.v5.0.2017.attribution", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarextension", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.totalview.itch.v5.0.2017.authenticity", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.totalview.itch.v5.0.2017.breachedlevel", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.buysellindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.canceledshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.totalview.itch.v5.0.2017.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.executedshares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.executionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalanceshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.interestflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.inverseindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoflag", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.totalview.itch.v5.0.2017.issueclassification", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.issuesubtype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level1", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level2", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.totalview.itch.v5.0.2017.level3", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.nsmequities.totalview.itch.v5.0.2017.locatecode", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.lowerauctioncollarprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.totalview.itch.v5.0.2017.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketmakermode", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketparticipantstate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.message", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mpid", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.totalview.itch.v5.0.2017.packet", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.totalview.itch.v5.0.2017.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.pairedshares", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.totalview.itch.v5.0.2017.payload", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.totalview.itch.v5.0.2017.primarymarketmaker", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.printable = ProtoField.new("Printable", "nasdaq.nsmequities.totalview.itch.v5.0.2017.printable", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.totalview.itch.v5.0.2017.reason", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.totalview.itch.v5.0.2017.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reserved = ProtoField.new("Reserved", "nasdaq.nsmequities.totalview.itch.v5.0.2017.reserved", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsize", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.totalview.itch.v5.0.2017.session", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares", ftypes.UINT32)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.totalview.itch.v5.0.2017.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber", ftypes.UINT16)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.totalview.itch.v5.0.2017.tradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.nsmequities.totalview.itch.v5.0.2017.upperauctioncollarprice", ftypes.DOUBLE)

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 messages
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.addordernompidattributionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.addorderwithmpidattributionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.brokentrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quoting_period_update = ProtoField.new("Ipo Quoting Period Update", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoquotingperiodupdate", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.luldauctioncollarmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.mwcbstatuslevelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.non_cross_trade_message = ProtoField.new("Non Cross Trade Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.noncrosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.ordercancelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderdeletemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreplacemessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.retail_interest_message = ProtoField.new("Retail Interest Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.retailinterestmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.totalview.itch.v5.0.2017.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities TotalView Itch 5.0.2017 generated fields
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.totalview.itch.v5.0.2017.messageindex", ftypes.UINT16)

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
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message = Pref.bool("Show Add Order No Mpid Attribution Message", show.add_order_no_mpid_attribution_message, "Parse and add Add Order No Mpid Attribution Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message = Pref.bool("Show Add Order With Mpid Attribution Message", show.add_order_with_mpid_attribution_message, "Parse and add Add Order With Mpid Attribution Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update = Pref.bool("Show Ipo Quoting Period Update", show.ipo_quoting_period_update, "Parse and add Ipo Quoting Period Update to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message = Pref.bool("Show Luld Auction Collar Message", show.luld_auction_collar_message, "Parse and add Luld Auction Collar Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message = Pref.bool("Show Market Participant Position Message", show.market_participant_position_message, "Parse and add Market Participant Position Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message = Pref.bool("Show Mwcb Status Level Message", show.mwcb_status_level_message, "Parse and add Mwcb Status Level Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message = Pref.bool("Show Net Order Imbalance Indicator Message", show.net_order_imbalance_indicator_message, "Parse and add Net Order Imbalance Indicator Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message = Pref.bool("Show Non Cross Trade Message", show.non_cross_trade_message, "Parse and add Non Cross Trade Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message = Pref.bool("Show Order Cancel Message", show.order_cancel_message, "Parse and add Order Cancel Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message = Pref.bool("Show Reg Sho Short Sale Price Test Restricted Indicator Message", show.reg_sho_short_sale_price_test_restricted_indicator_message, "Parse and add Reg Sho Short Sale Price Test Restricted Indicator Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message = Pref.bool("Show Retail Interest Message", show.retail_interest_message, "Parse and add Retail Interest Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_mpid_attribution_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message then
    show.add_order_no_mpid_attribution_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_no_mpid_attribution_message
    changed = true
  end
  if show.add_order_with_mpid_attribution_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message then
    show.add_order_with_mpid_attribution_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_add_order_with_mpid_attribution_message
    changed = true
  end
  if show.broken_trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_broken_trade_message
    changed = true
  end
  if show.cross_trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message then
    show.cross_trade_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_cross_trade_message
    changed = true
  end
  if show.ipo_quoting_period_update ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update then
    show.ipo_quoting_period_update = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_ipo_quoting_period_update
    changed = true
  end
  if show.luld_auction_collar_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message then
    show.luld_auction_collar_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_luld_auction_collar_message
    changed = true
  end
  if show.market_participant_position_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message then
    show.market_participant_position_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_market_participant_position_message
    changed = true
  end
  if show.message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message then
    show.message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header then
    show.message_header = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_level_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message then
    show.mwcb_status_level_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_mwcb_status_level_message
    changed = true
  end
  if show.net_order_imbalance_indicator_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message then
    show.net_order_imbalance_indicator_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_net_order_imbalance_indicator_message
    changed = true
  end
  if show.non_cross_trade_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message then
    show.non_cross_trade_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_non_cross_trade_message
    changed = true
  end
  if show.order_cancel_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message then
    show.order_cancel_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_cancel_message
    changed = true
  end
  if show.order_delete_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message then
    show.order_delete_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message then
    show.order_executed_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message then
    show.order_replace_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_short_sale_price_test_restricted_indicator_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message then
    show.reg_sho_short_sale_price_test_restricted_indicator_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_reg_sho_short_sale_price_test_restricted_indicator_message
    changed = true
  end
  if show.retail_interest_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message then
    show.retail_interest_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_retail_interest_message
    changed = true
  end
  if show.stock_directory_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message then
    show.stock_directory_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message then
    show.system_event_message = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload then
    show.payload = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.prefs.show_payload
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

-- Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag = {}

-- Size: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock = {}

-- Size: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size = 6

-- Display: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number = {}

-- Size: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate = {}

-- Size: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message = {}

-- Calculate size of: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.size

  return index
end

-- Display: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index, interest_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Interest Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.retail_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.retail_interest_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
translate.current_reference_price = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.current_reference_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
translate.near_price = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.near_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.near_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
translate.far_price = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.far_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.far_price, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message = {}

-- Calculate size of: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.size

  return index
end

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_nsmequities_totalview_itch_v5_0_2017.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.net_order_imbalance_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.match_number, range, value, display)

  return offset + length, value
end

-- Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message = {}

-- Calculate size of: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size

  return index
end

-- Display: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.size = 4

-- Display: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
translate.cross_price = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.cross_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares = {}

-- Size: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message = {}

-- Calculate size of: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.size

  return index
end

-- Display: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.price = {}

-- Size: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size = 4

-- Display: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.price, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.shares = {}

-- Size: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size = 4

-- Display: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.shares, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message = {}

-- Calculate size of: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size

  return index
end

-- Display: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Cross Trade Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.non_cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.non_cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message = {}

-- Calculate size of: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size

  return index
end

-- Display: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message = {}

-- Calculate size of: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  return index
end

-- Display: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message = {}

-- Calculate size of: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.size

  return index
end

-- Display: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price = {}

-- Size: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.size = 4

-- Display: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
translate.execution_price = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.execution_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017.printable = {}

-- Size: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.size = 1

-- Display: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.printable, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares = {}

-- Size: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message = {}

-- Calculate size of: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.size

  return index
end

-- Display: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_nsmequities_totalview_itch_v5_0_2017.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message = {}

-- Calculate size of: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.size

  return index
end

-- Display: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution = {}

-- Size: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.size = 4

-- Display: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.attribution, range, value, display)

  return offset + length, value
end

-- Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message = {}

-- Calculate size of: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.size

  return index
end

-- Display: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.dissect(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_nsmequities_totalview_itch_v5_0_2017.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_with_mpid_attribution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
translate.lower_auction_collar_price = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.lower_auction_collar_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
translate.upper_auction_collar_price = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.upper_auction_collar_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.auction_collar_reference_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message = {}

-- Calculate size of: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.size

  return index
end

-- Display: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, upper_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, lower_auction_collar_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_extension = nasdaq_nsmequities_totalview_itch_v5_0_2017.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.luld_auction_collar_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message = {}

-- Calculate size of: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.price.size

  return index
end

-- Display: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_totalview_itch_v5_0_2017.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_totalview_itch_v5_0_2017.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_no_mpid_attribution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
translate.ipo_price = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.ipo_price(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update = {}

-- Calculate size of: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.size

  return index
end

-- Display: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: 4 Byte Unsigned Fixed Width Integer
  index, ipo_price = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.dissect = function(buffer, offset, packet, parent)
  if show.ipo_quoting_period_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_quoting_period_update, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.fields(buffer, offset, packet, parent)
  end
end

-- Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level = {}

-- Size: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.size = 1

-- Display: Breached Level
nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message = {}

-- Calculate size of: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.size

  return index
end

-- Display: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_nsmequities_totalview_itch_v5_0_2017.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_status_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3 = {}

-- Size: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.size = 8

-- Display: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
translate.level_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_3(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_3, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2 = {}

-- Size: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.size = 8

-- Display: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
translate.level_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_2(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1 = {}

-- Size: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.size = 8

-- Display: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
translate.level_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_1(raw)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message = {}

-- Calculate size of: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.size

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_nsmequities_totalview_itch_v5_0_2017.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.mwcb_decline_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state = {}

-- Size: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid = {}

-- Size: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.size = 4

-- Display: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.mpid, range, value, display)

  return offset + length, value
end

-- Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message = {}

-- Calculate size of: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.size

  return index
end

-- Display: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_nsmequities_totalview_itch_v5_0_2017.mpid.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_nsmequities_totalview_itch_v5_0_2017.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.market_participant_position_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code = {}

-- Size: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.size = 2

-- Display: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.display = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Calculate size of: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.size

  return index
end

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: 2 Byte Unsigned Fixed Width Integer
  index, locate_code = nasdaq_nsmequities_totalview_itch_v5_0_2017.locate_code.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.reg_sho_short_sale_price_test_restricted_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017.reason = {}

-- Size: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reason, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved = {}

-- Size: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.size = 1

-- Display: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.reserved, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message = {}

-- Calculate size of: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.size

  return index
end

-- Display: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 4 values
  index, trading_state = nasdaq_nsmequities_totalview_itch_v5_0_2017.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = nasdaq_nsmequities_totalview_itch_v5_0_2017.reserved.dissect(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_nsmequities_totalview_itch_v5_0_2017.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.market_category, range, value, display)

  return offset + length, value
end

-- Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message = {}

-- Calculate size of: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.size

  return index
end

-- Display: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_nsmequities_totalview_itch_v5_0_2017.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_nsmequities_totalview_itch_v5_0_2017.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String Enum with 16 values
  index, issue_classification = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String Enum with 59 values
  index, issue_sub_type = nasdaq_nsmequities_totalview_itch_v5_0_2017.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_nsmequities_totalview_itch_v5_0_2017.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_nsmequities_totalview_itch_v5_0_2017.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_nsmequities_totalview_itch_v5_0_2017.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message = {}

-- Calculate size of: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.size

  return index
end

-- Display: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_totalview_itch_v5_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_nsmequities_totalview_itch_v5_0_2017.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017.payload = {}

-- Calculate runtime size of: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.size = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.size(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.size(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.size(buffer, offset)
  end
  -- Size of Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.size(buffer, offset)
  end
  -- Size of Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.size(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.size(buffer, offset)
  end
  -- Size of Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.size(buffer, offset)
  end
  -- Size of Ipo Quoting Period Update
  if message_type == "K" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.size(buffer, offset)
  end
  -- Size of Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.size(buffer, offset)
  end
  -- Size of Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.size(buffer, offset)
  end
  -- Size of Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.size(buffer, offset)
  end
  -- Size of Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.size(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.size(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.size(buffer, offset)
  end
  -- Size of Non Cross Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.size(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.size(buffer, offset)
  end
  -- Size of Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.size(buffer, offset)
  end
  -- Size of Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.size(buffer, offset)
  end
  -- Size of Retail Interest Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.mwcb_status_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update
  if message_type == "K" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.ipo_quoting_period_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_no_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.luld_auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.add_order_with_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Non Cross Trade Message
  if message_type == "P" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.non_cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Interest Message
  if message_type == "N" then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.retail_interest_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.payload, range, display)

  return nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.display = function(value)
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
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header = {}

-- Calculate size of: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.size

  return index
end

-- Display: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 21 values
  index, message_type = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.message = {}

-- Display: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 21 branches
  index = nasdaq_nsmequities_totalview_itch_v5_0_2017.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_totalview_itch_v5_0_2017.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_totalview_itch_v5_0_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_totalview_itch_v5_0_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_totalview_itch_v5_0_2017.session = {}

-- Size: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017.session.size = 10

-- Display: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_totalview_itch_v5_0_2017.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_totalview_itch_v5_0_2017.session.size
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

  local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.session.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.size

  index = index + nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_totalview_itch_v5_0_2017.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_totalview_itch_v5_0_2017.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_totalview_itch_v5_0_2017.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet = {}

-- Dissect Packet
nasdaq_nsmequities_totalview_itch_v5_0_2017.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_totalview_itch_v5_0_2017.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_nsmequities_totalview_itch_v5_0_2017.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.init()
end

-- Dissector for Nasdaq NsmEquities TotalView Itch 5.0.2017
function omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_totalview_itch_v5_0_2017, buffer(), omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_totalview_itch_v5_0_2017.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nsmequities_totalview_itch_v5_0_2017)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_nasdaq_nsmequities_totalview_itch_v5_0_2017_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2017
local function omi_nasdaq_nsmequities_totalview_itch_v5_0_2017_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_nasdaq_nsmequities_totalview_itch_v5_0_2017_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_totalview_itch_v5_0_2017
  omi_nasdaq_nsmequities_totalview_itch_v5_0_2017.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities TotalView Itch 5.0.2017
omi_nasdaq_nsmequities_totalview_itch_v5_0_2017:register_heuristic("udp", omi_nasdaq_nsmequities_totalview_itch_v5_0_2017_heuristic)

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
