-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Protocol
local omi_nasdaq_psxequities_totalview_itch_v5_0_2018 = Proto("Nasdaq.PsxEquities.TotalView.Itch.v5.0.2018.Lua", "Nasdaq PsxEquities TotalView Itch 5.0.2018")

-- Protocol table
local nasdaq_psxequities_totalview_itch_v5_0_2018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Fields
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.attribution = ProtoField.new("Attribution", "nasdaq.psxequities.totalview.itch.v5.0.2018.attribution", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.psxequities.totalview.itch.v5.0.2018.auctioncollarextension", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.psxequities.totalview.itch.v5.0.2018.authenticity", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.psxequities.totalview.itch.v5.0.2018.breachedlevel", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.buysellindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.canceled_shares = ProtoField.new("Canceled Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.canceledshares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.crossprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_shares = ProtoField.new("Cross Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.crossshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.crosstype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.psxequities.totalview.itch.v5.0.2018.etpflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.psxequities.totalview.itch.v5.0.2018.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.event_code = ProtoField.new("Event Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.eventcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.executed_shares = ProtoField.new("Executed Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.executedshares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.execution_price = ProtoField.new("Execution Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.executionprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.far_price = ProtoField.new("Far Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.farprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.financialstatusindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.psxequities.totalview.itch.v5.0.2018.imbalancedirection", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.imbalanceshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.inverseindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.psxequities.totalview.itch.v5.0.2018.ipoflag", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.psxequities.totalview.itch.v5.0.2018.issueclassification", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.issuesubtype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_1 = ProtoField.new("Level 1", "nasdaq.psxequities.totalview.itch.v5.0.2018.level1", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_2 = ProtoField.new("Level 2", "nasdaq.psxequities.totalview.itch.v5.0.2018.level2", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_3 = ProtoField.new("Level 3", "nasdaq.psxequities.totalview.itch.v5.0.2018.level3", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.locate_code = ProtoField.new("Locate Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.locatecode", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.lowerauctioncollarprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.psxequities.totalview.itch.v5.0.2018.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_category = ProtoField.new("Market Category", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketcategory", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_code = ProtoField.new("Market Code", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketcode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketmakermode", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketparticipantstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.match_number = ProtoField.new("Match Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.matchnumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message = ProtoField.new("Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.message", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_count = ProtoField.new("Message Count", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagecount", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_header = ProtoField.new("Message Header", "nasdaq.psxequities.totalview.itch.v5.0.2018.messageheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_length = ProtoField.new("Message Length", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagelength", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_type = ProtoField.new("Message Type", "nasdaq.psxequities.totalview.itch.v5.0.2018.messagetype", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mpid = ProtoField.new("Mpid", "nasdaq.psxequities.totalview.itch.v5.0.2018.mpid", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.near_price = ProtoField.new("Near Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.nearprice", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.new_order_reference_number = ProtoField.new("New Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.neworderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.psxequities.totalview.itch.v5.0.2018.operationalhaltaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.original_order_reference_number = ProtoField.new("Original Order Reference Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.originalorderreferencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet = ProtoField.new("Packet", "nasdaq.psxequities.totalview.itch.v5.0.2018.packet", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.psxequities.totalview.itch.v5.0.2018.packetheader", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.pairedshares", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price = ProtoField.new("Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.price", ftypes.DOUBLE)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.pricevariationindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.psxequities.totalview.itch.v5.0.2018.primarymarketmaker", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.printable = ProtoField.new("Printable", "nasdaq.psxequities.totalview.itch.v5.0.2018.printable", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reason = ProtoField.new("Reason", "nasdaq.psxequities.totalview.itch.v5.0.2018.reason", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.psxequities.totalview.itch.v5.0.2018.regshoaction", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reserved = ProtoField.new("Reserved", "nasdaq.psxequities.totalview.itch.v5.0.2018.reserved", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.psxequities.totalview.itch.v5.0.2018.roundlotsize", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.psxequities.totalview.itch.v5.0.2018.roundlotsonly", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.sequencenumber", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.session = ProtoField.new("Session", "nasdaq.psxequities.totalview.itch.v5.0.2018.session", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.shares = ProtoField.new("Shares", "nasdaq.psxequities.totalview.itch.v5.0.2018.shares", ftypes.UINT32)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.psxequities.totalview.itch.v5.0.2018.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock = ProtoField.new("Stock", "nasdaq.psxequities.totalview.itch.v5.0.2018.stock", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_locate = ProtoField.new("Stock Locate", "nasdaq.psxequities.totalview.itch.v5.0.2018.stocklocate", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.psxequities.totalview.itch.v5.0.2018.timestamp", ftypes.UINT64)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.psxequities.totalview.itch.v5.0.2018.trackingnumber", ftypes.UINT16)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trading_state = ProtoField.new("Trading State", "nasdaq.psxequities.totalview.itch.v5.0.2018.tradingstate", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.psxequities.totalview.itch.v5.0.2018.upperauctioncollarprice", ftypes.DOUBLE)

-- Nasdaq PsxEquities Itch TotalView 5.0.2018 Application Messages
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message = ProtoField.new("Add Order No Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.addordernompidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message = ProtoField.new("Add Order With Mpid Attribution Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.addorderwithmpidattributionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.brokentrademessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.crosstrademessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.luldauctioncollarmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message = ProtoField.new("Mwcb Status Level Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.mwcbstatuslevelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.ordercancelmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderdeletemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.orderreplacemessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.psxequities.totalview.itch.v5.0.2018.systemeventmessage", ftypes.STRING)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trade_message_non_cross = ProtoField.new("Trade Message Non Cross", "nasdaq.psxequities.totalview.itch.v5.0.2018.trademessagenoncross", ftypes.STRING)

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 generated fields
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_index = ProtoField.new("Message Index", "nasdaq.psxequities.totalview.itch.v5.0.2018.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq PsxEquities TotalView Itch 5.0.2018 Show Options
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Timestamp Display Preferences
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message then
    show.message = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_header then
    show.message_header = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet then
    show.packet = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_index then
    show.message_index = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.show_message_index
  end

  -- Check Timestamp preferences
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format then
    nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.timestamp_format
  end
  if nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours ~= omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours then
    nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.prefs.utc_offset_hours
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
-- Nasdaq PsxEquities TotalView Itch 5.0.2018 Fields
-----------------------------------------------------------------------

-- Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution = {}

-- Size: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size = 4

-- Display: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity = {}

-- Size: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size = 1

-- Display: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level = {}

-- Size: Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size = 1

-- Display: Breached Level
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size = 1

-- Display: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.display = function(value)
  if value == "B" then
    return "Buy Sell Indicator: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell Indicator: Sell (S)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares = {}

-- Size: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size = 4

-- Display: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.display = function(value)
  return "Canceled Shares: "..value
end

-- Dissect: Canceled Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.canceled_shares, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price = {}

-- Size: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size = 4

-- Display: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares = {}

-- Size: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size = 8

-- Display: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.display = function(value)
  return "Cross Shares: "..value
end

-- Dissect: Cross Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_shares, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type = {}

-- Size: Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size = 1

-- Display: Cross Type
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag = {}

-- Size: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code = {}

-- Size: Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size = 1

-- Display: Event Code
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares = {}

-- Size: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size = 4

-- Display: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price = {}

-- Size: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size = 4

-- Display: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price = {}

-- Size: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size = 4

-- Display: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification = {}

-- Size: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1 = {}

-- Size: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size = 8

-- Display: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2 = {}

-- Size: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size = 8

-- Display: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3 = {}

-- Size: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size = 8

-- Display: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.level_3, range, value, display)

  return offset + length, value
end

-- Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code = {}

-- Size: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size = 2

-- Display: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.display = function(value)
  return "Locate Code: "..value
end

-- Dissect: Locate Code
nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.locate_code, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category = {}

-- Size: Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size = 1

-- Display: Market Category
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code = {}

-- Size: Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size = 1

-- Display: Market Code
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state = {}

-- Size: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number = {}

-- Size: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size = 8

-- Display: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count = {}

-- Size: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size = 2

-- Display: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length = {}

-- Size: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size = 2

-- Display: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type = {}

-- Size: Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size = 1

-- Display: Message Type
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid = {}

-- Size: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size = 4

-- Display: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mpid, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price = {}

-- Size: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size = 4

-- Display: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.near_price, range, value, display)

  return offset + length, value
end

-- New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number = {}

-- Size: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size = 8

-- Display: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.display = function(value)
  return "New Order Reference Number: "..value
end

-- Dissect: New Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.new_order_reference_number, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number = {}

-- Size: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size = 8

-- Display: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.display = function(value)
  return "Original Order Reference Number: "..value
end

-- Dissect: Original Order Reference Number
nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.original_order_reference_number, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares = {}

-- Size: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price = {}

-- Size: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.size = 4

-- Display: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable = {}

-- Size: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size = 1

-- Display: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_psxequities_totalview_itch_v5_0_2018.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.printable, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason = {}

-- Size: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size = 4

-- Display: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_psxequities_totalview_itch_v5_0_2018.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved = {}

-- Size: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size = 1

-- Display: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Yes (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number = {}

-- Size: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session = {}

-- Size: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.size = 10

-- Display: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_psxequities_totalview_itch_v5_0_2018.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.session.size
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

  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares = {}

-- Size: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size = 4

-- Display: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock = {}

-- Size: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size = 8

-- Display: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock, range, value, display)

  return offset + length, value
end

-- Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate = {}

-- Size: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size = 2

-- Display: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.display = function(value)
  return "Stock Locate: "..value
end

-- Dissect: Stock Locate
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_locate, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp = {}

-- Size: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size = 6

-- Display: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_psxequities_totalview_itch_v5_0_2018.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number = {}

-- Size: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state = {}

-- Size: Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size = 1

-- Display: Trading State
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.display = function(value)
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
nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.translate(raw)
  local display = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq PsxEquities TotalView Itch 5.0.2018
-----------------------------------------------------------------------

-- Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_psxequities_totalview_itch_v5_0_2018.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_psxequities_totalview_itch_v5_0_2018.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_psxequities_totalview_itch_v5_0_2018.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_psxequities_totalview_itch_v5_0_2018.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 14 values
  index, price_variation_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.size

-- Display: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Cross Shares: 8 Byte Unsigned Fixed Width Integer
  index, cross_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 4 values
  index, cross_type = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross = {}

-- Size: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message Non Cross
nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.trade_message_non_cross, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size

-- Display: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Original Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, original_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.original_order_reference_number.dissect(buffer, index, packet, parent)

  -- New Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, new_order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.new_order_reference_number.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size

-- Display: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.size

-- Display: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Canceled Shares: 4 Byte Unsigned Fixed Width Integer
  index, canceled_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.canceled_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.printable.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.size

-- Display: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = nasdaq_psxequities_totalview_itch_v5_0_2018.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: 4 Byte Unsigned Fixed Width Integer
  index, execution_price = nasdaq_psxequities_totalview_itch_v5_0_2018.execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.size

-- Display: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Shares: 4 Byte Unsigned Fixed Width Integer
  index, executed_shares = nasdaq_psxequities_totalview_itch_v5_0_2018.executed_shares.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_psxequities_totalview_itch_v5_0_2018.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message = {}

-- Size: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.size

-- Display: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  -- Attribution: 4 Byte Ascii String
  index, attribution = nasdaq_psxequities_totalview_itch_v5_0_2018.attribution.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_with_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message = {}

-- Size: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.shares.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.price.size

-- Display: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Order Reference Number: 8 Byte Unsigned Fixed Width Integer
  index, order_reference_number = nasdaq_psxequities_totalview_itch_v5_0_2018.order_reference_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: 1 Byte Ascii String Enum with 2 values
  index, buy_sell_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_psxequities_totalview_itch_v5_0_2018.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_psxequities_totalview_itch_v5_0_2018.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution Message
nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.add_order_no_mpid_attribution_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_psxequities_totalview_itch_v5_0_2018.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message = {}

-- Size: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.size

-- Display: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, upper_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0_2018.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: 4 Byte Unsigned Fixed Width Integer
  index, lower_auction_collar_price = nasdaq_psxequities_totalview_itch_v5_0_2018.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: 4 Byte Unsigned Fixed Width Integer
  index, auction_collar_extension = nasdaq_psxequities_totalview_itch_v5_0_2018.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message = {}

-- Size: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.size

-- Display: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_psxequities_totalview_itch_v5_0_2018.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_status_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_psxequities_totalview_itch_v5_0_2018.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_psxequities_totalview_itch_v5_0_2018.mpid.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_psxequities_totalview_itch_v5_0_2018.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = nasdaq_psxequities_totalview_itch_v5_0_2018.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Locate Code: 2 Byte Unsigned Fixed Width Integer
  index, locate_code = nasdaq_psxequities_totalview_itch_v5_0_2018.locate_code.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.reason.size

-- Display: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Trading State: 1 Byte Ascii String Enum with 4 values
  index, trading_state = nasdaq_psxequities_totalview_itch_v5_0_2018.trading_state.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Ascii String
  index, reserved = nasdaq_psxequities_totalview_itch_v5_0_2018.reserved.dissect(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_psxequities_totalview_itch_v5_0_2018.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_psxequities_totalview_itch_v5_0_2018.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_psxequities_totalview_itch_v5_0_2018.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_psxequities_totalview_itch_v5_0_2018.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = nasdaq_psxequities_totalview_itch_v5_0_2018.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_psxequities_totalview_itch_v5_0_2018.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_psxequities_totalview_itch_v5_0_2018.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_psxequities_totalview_itch_v5_0_2018.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_psxequities_totalview_itch_v5_0_2018.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_psxequities_totalview_itch_v5_0_2018.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message = {}

-- Size: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.size

-- Display: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stock Locate: 2 Byte Unsigned Fixed Width Integer
  index, stock_locate = nasdaq_psxequities_totalview_itch_v5_0_2018.stock_locate.dissect(buffer, index, packet, parent)

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_psxequities_totalview_itch_v5_0_2018.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_psxequities_totalview_itch_v5_0_2018.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_psxequities_totalview_itch_v5_0_2018.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_psxequities_totalview_itch_v5_0_2018.payload = {}

-- Dissect: Payload
nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "L" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Level Message
  if message_type == "W" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.mwcb_status_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.luld_auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.operational_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution Message
  if message_type == "A" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_no_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid Attribution Message
  if message_type == "F" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.add_order_with_mpid_attribution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message Non Cross
  if message_type == "P" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.trade_message_non_cross.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_psxequities_totalview_itch_v5_0_2018.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header = {}

-- Size: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.size

-- Display: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_psxequities_totalview_itch_v5_0_2018.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 20 values
  index, message_type = nasdaq_psxequities_totalview_itch_v5_0_2018.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message = {}

-- Read runtime size of: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_psxequities_totalview_itch_v5_0_2018.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 20 branches
  index = nasdaq_psxequities_totalview_itch_v5_0_2018.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_psxequities_totalview_itch_v5_0_2018.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_psxequities_totalview_itch_v5_0_2018.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.message, buffer(offset, 0))
    local current = nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_psxequities_totalview_itch_v5_0_2018.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_psxequities_totalview_itch_v5_0_2018.messages = {}

-- Dissect: Messages
nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_psxequities_totalview_itch_v5_0_2018.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header = {}

-- Size: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.size =
  nasdaq_psxequities_totalview_itch_v5_0_2018.session.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.size + 
  nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.size

-- Display: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_psxequities_totalview_itch_v5_0_2018.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_psxequities_totalview_itch_v5_0_2018.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_psxequities_totalview_itch_v5_0_2018.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet = {}

-- Verify required size of Udp packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.size
end

-- Dissect Packet
nasdaq_psxequities_totalview_itch_v5_0_2018.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_psxequities_totalview_itch_v5_0_2018.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_psxequities_totalview_itch_v5_0_2018.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.init()
end

-- Dissector for Nasdaq PsxEquities TotalView Itch 5.0.2018
function omi_nasdaq_psxequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_psxequities_totalview_itch_v5_0_2018.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_psxequities_totalview_itch_v5_0_2018, buffer(), omi_nasdaq_psxequities_totalview_itch_v5_0_2018.description, "("..buffer:len().." Bytes)")
  return nasdaq_psxequities_totalview_itch_v5_0_2018.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq PsxEquities TotalView Itch 5.0.2018 (Udp)
local function omi_nasdaq_psxequities_totalview_itch_v5_0_2018_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_psxequities_totalview_itch_v5_0_2018.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_psxequities_totalview_itch_v5_0_2018
  omi_nasdaq_psxequities_totalview_itch_v5_0_2018.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq PsxEquities TotalView Itch 5.0.2018
omi_nasdaq_psxequities_totalview_itch_v5_0_2018:register_heuristic("udp", omi_nasdaq_psxequities_totalview_itch_v5_0_2018_udp_heuristic)

-- Register Nasdaq PsxEquities TotalView Itch 5.0.2018 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_psxequities_totalview_itch_v5_0_2018)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 5.0.2018
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
