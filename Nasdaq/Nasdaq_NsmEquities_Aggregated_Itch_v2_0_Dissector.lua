-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Aggregated Itch 2.0 Protocol
local omi_nasdaq_nsmequities_aggregated_itch_v2_0 = Proto("Nasdaq.NsmEquities.Aggregated.Itch.v2.0.Lua", "Nasdaq NsmEquities Aggregated Itch 2.0")

-- Protocol table
local nasdaq_nsmequities_aggregated_itch_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Aggregated Itch 2.0 Fields
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.aggregate_shares = ProtoField.new("Aggregate Shares", "nasdaq.nsmequities.aggregated.itch.v2.0.aggregateshares", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.auction_collar_extension = ProtoField.new("Auction Collar Extension", "nasdaq.nsmequities.aggregated.itch.v2.0.auctioncollarextension", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "nasdaq.nsmequities.aggregated.itch.v2.0.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.aggregated.itch.v2.0.authenticity", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.aggregated.itch.v2.0.breachedlevel", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.aggregated.itch.v2.0.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.aggregated.itch.v2.0.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.aggregated.itch.v2.0.etpflag", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.aggregated.itch.v2.0.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.aggregated.itch.v2.0.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.aggregated.itch.v2.0.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.aggregated.itch.v2.0.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.aggregated.itch.v2.0.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.aggregated.itch.v2.0.imbalanceshares", ftypes.UINT64)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.aggregated.itch.v2.0.interestflag", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.aggregated.itch.v2.0.inverseindicator", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.aggregated.itch.v2.0.ipoflag", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.aggregated.itch.v2.0.ipoprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.aggregated.itch.v2.0.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.aggregated.itch.v2.0.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.aggregated.itch.v2.0.issueclassification", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.aggregated.itch.v2.0.issuesubtype", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.aggregated.itch.v2.0.level1", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.aggregated.itch.v2.0.level2", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.aggregated.itch.v2.0.level3", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.lower_auction_collar_price = ProtoField.new("Lower Auction Collar Price", "nasdaq.nsmequities.aggregated.itch.v2.0.lowerauctioncollarprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.lower_price_range_collar = ProtoField.new("Lower Price Range Collar", "nasdaq.nsmequities.aggregated.itch.v2.0.lowerpricerangecollar", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.aggregated.itch.v2.0.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.aggregated.itch.v2.0.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.nsmequities.aggregated.itch.v2.0.marketcode", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.aggregated.itch.v2.0.marketmakermode", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.aggregated.itch.v2.0.marketparticipantstate", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_side = ProtoField.new("Market Side", "nasdaq.nsmequities.aggregated.itch.v2.0.marketside", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.maximum_allowable_price = ProtoField.new("Maximum Allowable Price", "nasdaq.nsmequities.aggregated.itch.v2.0.maximumallowableprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.aggregated.itch.v2.0.message", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.aggregated.itch.v2.0.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.aggregated.itch.v2.0.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.aggregated.itch.v2.0.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.aggregated.itch.v2.0.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.minimum_allowable_price = ProtoField.new("Minimum Allowable Price", "nasdaq.nsmequities.aggregated.itch.v2.0.minimumallowableprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.aggregated.itch.v2.0.mpid", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_execution_price = ProtoField.new("Near Execution Price", "nasdaq.nsmequities.aggregated.itch.v2.0.nearexecutionprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_execution_time = ProtoField.new("Near Execution Time", "nasdaq.nsmequities.aggregated.itch.v2.0.nearexecutiontime", ftypes.UINT64)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.aggregated.itch.v2.0.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.open_eligibility_status = ProtoField.new("Open Eligibility Status", "nasdaq.nsmequities.aggregated.itch.v2.0.openeligibilitystatus", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.nsmequities.aggregated.itch.v2.0.operationalhaltaction", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.aggregated.itch.v2.0.packet", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.aggregated.itch.v2.0.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.aggregated.itch.v2.0.pairedshares", ftypes.UINT64)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.participant_shares = ProtoField.new("Participant Shares", "nasdaq.nsmequities.aggregated.itch.v2.0.participantshares", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.aggregated.itch.v2.0.price", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.aggregated.itch.v2.0.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.aggregated.itch.v2.0.primarymarketmaker", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.aggregated.itch.v2.0.reason", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.aggregated.itch.v2.0.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.aggregated.itch.v2.0.roundlotsize", ftypes.UINT32)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.aggregated.itch.v2.0.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.aggregated.itch.v2.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.aggregated.itch.v2.0.session", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.aggregated.itch.v2.0.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.aggregated.itch.v2.0.stock", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.aggregated.itch.v2.0.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.aggregated.itch.v2.0.trackingnumber", ftypes.UINT16)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.trading_state = ProtoField.new("Trading State", "nasdaq.nsmequities.aggregated.itch.v2.0.tradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.upper_auction_collar_price = ProtoField.new("Upper Auction Collar Price", "nasdaq.nsmequities.aggregated.itch.v2.0.upperauctioncollarprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.upper_price_range_collar = ProtoField.new("Upper Price Range Collar", "nasdaq.nsmequities.aggregated.itch.v2.0.upperpricerangecollar", ftypes.DOUBLE)

-- Nasdaq NsmEquities Itch Aggregated 2.0 Application Messages
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.direct_listing_with_capital_raise_price_discovery_message = ProtoField.new("Direct Listing With Capital Raise Price Discovery Message", "nasdaq.nsmequities.aggregated.itch.v2.0.directlistingwithcapitalraisepricediscoverymessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.nsmequities.aggregated.itch.v2.0.ipoquotingperiodupdatemessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.luld_auction_collar_message = ProtoField.new("Luld Auction Collar Message", "nasdaq.nsmequities.aggregated.itch.v2.0.luldauctioncollarmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_participant_position_message = ProtoField.new("Market Participant Position Message", "nasdaq.nsmequities.aggregated.itch.v2.0.marketparticipantpositionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.aggregated.itch.v2.0.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.nsmequities.aggregated.itch.v2.0.mwcbstatusmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.net_order_imbalance_indicator_message = ProtoField.new("Net Order Imbalance Indicator Message", "nasdaq.nsmequities.aggregated.itch.v2.0.netorderimbalanceindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.nsmequities.aggregated.itch.v2.0.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price_level_update_message = ProtoField.new("Price Level Update Message", "nasdaq.nsmequities.aggregated.itch.v2.0.pricelevelupdatemessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message = ProtoField.new("Reg Sho Short Sale Price Test Restricted Indicator Message", "nasdaq.nsmequities.aggregated.itch.v2.0.regshoshortsalepricetestrestrictedindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.retail_price_improvement_indicator_message = ProtoField.new("Retail Price Improvement Indicator Message", "nasdaq.nsmequities.aggregated.itch.v2.0.retailpriceimprovementindicatormessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.aggregated.itch.v2.0.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.aggregated.itch.v2.0.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.aggregated.itch.v2.0.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities Aggregated Itch 2.0 generated fields
omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.aggregated.itch.v2.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Aggregated Itch 2.0 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Nasdaq NsmEquities Aggregated Itch 2.0 Show Options
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Timestamp Display Preferences
nasdaq_nsmequities_aggregated_itch_v2_0.timestamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_aggregated_itch_v2_0.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_application_messages
    changed = true
  end
  if show.message ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message then
    show.message = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.show_packet_header
    changed = true
  end

  -- Check Timestamp preferences
  if nasdaq_nsmequities_aggregated_itch_v2_0.timestamp_format ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.timestamp_format then
    nasdaq_nsmequities_aggregated_itch_v2_0.timestamp_format = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.timestamp_format
    changed = true
  end
  if nasdaq_nsmequities_aggregated_itch_v2_0.utc_offset_hours ~= omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.utc_offset_hours then
    nasdaq_nsmequities_aggregated_itch_v2_0.utc_offset_hours = omi_nasdaq_nsmequities_aggregated_itch_v2_0.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities Aggregated Itch 2.0 Fields
-----------------------------------------------------------------------

-- Aggregate Shares
nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares = {}

-- Size: Aggregate Shares
nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.size = 4

-- Display: Aggregate Shares
nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.display = function(value)
  return "Aggregate Shares: "..value
end

-- Dissect: Aggregate Shares
nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.aggregate_shares, range, value, display)

  return offset + length, value
end

-- Auction Collar Extension
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension = {}

-- Size: Auction Collar Extension
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.size = 4

-- Display: Auction Collar Extension
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.display = function(value)
  return "Auction Collar Extension: "..value
end

-- Dissect: Auction Collar Extension
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.auction_collar_extension, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.size = 4

-- Display: Auction Collar Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Auction Collar Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Authenticity
nasdaq_nsmequities_aggregated_itch_v2_0.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_nsmequities_aggregated_itch_v2_0.breached_level = {}

-- Size: Breached Level
nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.size = 1

-- Display: Breached Level
nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.display = function(value)
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
nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_aggregated_itch_v2_0.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Nasdaq Opening Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Nasdaq Closing Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Cross For Ipo And Halted Paused Securities (H)"
  end
  if value == "A" then
    return "Cross Type: Extended Trading Close (A)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.display = function(value)
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
nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_aggregated_itch_v2_0.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_aggregated_itch_v2_0.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_aggregated_itch_v2_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "X" then
    return "Event Code: Clear Noii (X)"
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
nasdaq_nsmequities_aggregated_itch_v2_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_aggregated_itch_v2_0.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_aggregated_itch_v2_0.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_aggregated_itch_v2_0.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nsmequities_aggregated_itch_v2_0.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_aggregated_itch_v2_0.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.far_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Creations Andor Redemptions Suspended For Exchange Traded Product (C)"
  end
  if value == "N" then
    return "Financial Status Indicator: Normal (N)"
  end
  if value == " " then
    return "Financial Status Indicator: Not Available (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.display = function(value)
  if value == "B" then
    return "Imbalance Direction: Buy Imbalance (B)"
  end
  if value == "S" then
    return "Imbalance Direction: Sell Imbalance (S)"
  end
  if value == "N" then
    return "Imbalance Direction: No Imbalance (N)"
  end
  if value == "O" then
    return "Imbalance Direction: Insufficient Orders (O)"
  end
  if value == "P" then
    return "Imbalance Direction: Paused (P)"
  end

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Interest Flag
nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag = {}

-- Size: Interest Flag
nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.display = function(value)
  if value == "B" then
    return "Interest Flag: Buy Side (B)"
  end
  if value == "S" then
    return "Interest Flag: Sell Side (S)"
  end
  if value == "A" then
    return "Interest Flag: Both Sides (A)"
  end
  if value == "N" then
    return "Interest Flag: No Rpi Orders (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Ipo Security (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Ipo (N)"
  end
  if value == "Z" then
    return "Ipo Flag: Non Ipo New Listed (Z)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.display = function(value)
  if value == "A" then
    return "Issue Classification: American Depositary Share (A)"
  end
  if value == "B" then
    return "Issue Classification: Bond (B)"
  end
  if value == "C" then
    return "Issue Classification: Common Stock (C)"
  end
  if value == "F" then
    return "Issue Classification: Depository Receipt (F)"
  end
  if value == "I" then
    return "Issue Classification: 144 A (I)"
  end
  if value == "L" then
    return "Issue Classification: Limited Partnership (L)"
  end
  if value == "N" then
    return "Issue Classification: Notes (N)"
  end
  if value == "O" then
    return "Issue Classification: Ordinary Share (O)"
  end
  if value == "P" then
    return "Issue Classification: Preferred Stock (P)"
  end
  if value == "Q" then
    return "Issue Classification: Other Securities (Q)"
  end
  if value == "R" then
    return "Issue Classification: Right (R)"
  end
  if value == "S" then
    return "Issue Classification: Shares Of Beneficial Interest (S)"
  end
  if value == "T" then
    return "Issue Classification: Convertible Debenture (T)"
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
nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.display = function(value)
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
    return "Issue Sub Type: Commodity Linked Securities (CL)"
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
    return "Issue Sub Type: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Sub Type: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Sub Type: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Sub Type: Etf Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Sub Type: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Sub Type: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EN" then
    return "Issue Sub Type: Exchange Traded Notes (EN)"
  end
  if value == "EM" then
    return "Issue Sub Type: Exchange Traded Managed Funds (EM)"
  end
  if value == "EU" then
    return "Issue Sub Type: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Sub Type: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Sub Type: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Sub Type: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Sub Type: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Sub Type: Etf Index Fund Shares (I)"
  end
  if value == "IR" then
    return "Issue Sub Type: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Sub Type: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Sub Type: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Sub Type: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Sub Type: Contingent Litigation Right (L)"
  end
  if value == "LL" then
    return "Issue Sub Type: Limited Liability Company (LL)"
  end
  if value == "M" then
    return "Issue Sub Type: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Sub Type: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Sub Type: Etn Multi Factor Index Linked Securities (ML)"
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
    return "Issue Sub Type: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Sub Type: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Sub Type: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Sub Type: Commodity Redeemable Currency Linked Securities (RU)"
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
nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_nsmequities_aggregated_itch_v2_0.level_1 = {}

-- Size: Level 1
nasdaq_nsmequities_aggregated_itch_v2_0.level_1.size = 8

-- Display: Level 1
nasdaq_nsmequities_aggregated_itch_v2_0.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_nsmequities_aggregated_itch_v2_0.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_aggregated_itch_v2_0.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.level_1.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_nsmequities_aggregated_itch_v2_0.level_2 = {}

-- Size: Level 2
nasdaq_nsmequities_aggregated_itch_v2_0.level_2.size = 8

-- Display: Level 2
nasdaq_nsmequities_aggregated_itch_v2_0.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_nsmequities_aggregated_itch_v2_0.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_aggregated_itch_v2_0.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.level_2.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_nsmequities_aggregated_itch_v2_0.level_3 = {}

-- Size: Level 3
nasdaq_nsmequities_aggregated_itch_v2_0.level_3.size = 8

-- Display: Level 3
nasdaq_nsmequities_aggregated_itch_v2_0.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_nsmequities_aggregated_itch_v2_0.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_aggregated_itch_v2_0.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.level_3.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price = {}

-- Size: Lower Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.size = 4

-- Display: Lower Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.display = function(value)
  return "Lower Auction Collar Price: "..value
end

-- Translate: Lower Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.lower_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Lower Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar = {}

-- Size: Lower Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.size = 4

-- Display: Lower Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.display = function(value)
  return "Lower Price Range Collar: "..value
end

-- Translate: Lower Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.translate = function(raw)
  return raw/10000
end

-- Dissect: Lower Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.lower_price_range_collar, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.display = function(value)
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
nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_aggregated_itch_v2_0.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_aggregated_itch_v2_0.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_aggregated_itch_v2_0.market_category.display = function(value)
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
    return "Market Category: New York Stock Exchange (N)"
  end
  if value == "A" then
    return "Market Category: Nyse American (A)"
  end
  if value == "P" then
    return "Market Category: Nyse Arca (P)"
  end
  if value == "M" then
    return "Market Category: Nyse Texas (M)"
  end
  if value == "Z" then
    return "Market Category: Bats Z Exchange (Z)"
  end
  if value == "V" then
    return "Market Category: Investors Exchange Llc (V)"
  end
  if value == " " then
    return "Market Category: Not Available (<whitespace>)"
  end

  return "Market Category: Unknown("..value..")"
end

-- Dissect: Market Category
nasdaq_nsmequities_aggregated_itch_v2_0.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_nsmequities_aggregated_itch_v2_0.market_code = {}

-- Size: Market Code
nasdaq_nsmequities_aggregated_itch_v2_0.market_code.size = 1

-- Display: Market Code
nasdaq_nsmequities_aggregated_itch_v2_0.market_code.display = function(value)
  if value == "Q" then
    return "Market Code: Nasdaq (Q)"
  end
  if value == "B" then
    return "Market Code: Nasdaq Texas (B)"
  end
  if value == "X" then
    return "Market Code: Psx (X)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
nasdaq_nsmequities_aggregated_itch_v2_0.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Maker Mode
nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode = {}

-- Size: Market Maker Mode
nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.size = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.display = function(value)
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
nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Market Participant State
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state = {}

-- Size: Market Participant State
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.size = 1

-- Display: Market Participant State
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.display = function(value)
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
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Market Side
nasdaq_nsmequities_aggregated_itch_v2_0.market_side = {}

-- Size: Market Side
nasdaq_nsmequities_aggregated_itch_v2_0.market_side.size = 1

-- Display: Market Side
nasdaq_nsmequities_aggregated_itch_v2_0.market_side.display = function(value)
  if value == "B" then
    return "Market Side: Buy Order (B)"
  end
  if value == "S" then
    return "Market Side: Sell Order (S)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_nsmequities_aggregated_itch_v2_0.market_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_side, range, value, display)

  return offset + length, value
end

-- Maximum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price = {}

-- Size: Maximum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.size = 4

-- Display: Maximum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.display = function(value)
  return "Maximum Allowable Price: "..value
end

-- Translate: Maximum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Maximum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.maximum_allowable_price, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_aggregated_itch_v2_0.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_aggregated_itch_v2_0.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_aggregated_itch_v2_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_aggregated_itch_v2_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_aggregated_itch_v2_0.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_aggregated_itch_v2_0.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_aggregated_itch_v2_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_aggregated_itch_v2_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_aggregated_itch_v2_0.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_aggregated_itch_v2_0.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_aggregated_itch_v2_0.message_type.display = function(value)
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
  if value == "P" then
    return "Message Type: Market Participant Position Message (P)"
  end
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Status Message (W)"
  end
  if value == "K" then
    return "Message Type: Ipo Quoting Period Update Message (K)"
  end
  if value == "J" then
    return "Message Type: Luld Auction Collar Message (J)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end
  if value == "U" then
    return "Message Type: Price Level Update Message (U)"
  end
  if value == "I" then
    return "Message Type: Net Order Imbalance Indicator Message (I)"
  end
  if value == "N" then
    return "Message Type: Retail Price Improvement Indicator Message (N)"
  end
  if value == "O" then
    return "Message Type: Direct Listing With Capital Raise Price Discovery Message (O)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_aggregated_itch_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price = {}

-- Size: Minimum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.size = 4

-- Display: Minimum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.display = function(value)
  return "Minimum Allowable Price: "..value
end

-- Translate: Minimum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Minimum Allowable Price
nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.minimum_allowable_price, range, value, display)

  return offset + length, value
end

-- Mpid
nasdaq_nsmequities_aggregated_itch_v2_0.mpid = {}

-- Size: Mpid
nasdaq_nsmequities_aggregated_itch_v2_0.mpid.size = 4

-- Display: Mpid
nasdaq_nsmequities_aggregated_itch_v2_0.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_aggregated_itch_v2_0.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- Near Execution Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price = {}

-- Size: Near Execution Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.size = 4

-- Display: Near Execution Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.display = function(value)
  return "Near Execution Price: "..value
end

-- Translate: Near Execution Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Execution Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_execution_price, range, value, display)

  return offset + length, value
end

-- Near Execution Time
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time = {}

-- Size: Near Execution Time
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.size = 8

-- Display: Near Execution Time
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.display = function(value)
  return "Near Execution Time: "..value
end

-- Dissect: Near Execution Time
nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_execution_time, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_aggregated_itch_v2_0.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.near_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.near_price, range, value, display)

  return offset + length, value
end

-- Open Eligibility Status
nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status = {}

-- Size: Open Eligibility Status
nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.size = 1

-- Display: Open Eligibility Status
nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.display = function(value)
  if value == "N" then
    return "Open Eligibility Status: Not Eligible (N)"
  end
  if value == "Y" then
    return "Open Eligibility Status: Eligible (Y)"
  end

  return "Open Eligibility Status: Unknown("..value..")"
end

-- Dissect: Open Eligibility Status
nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.open_eligibility_status, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Operationally Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Trading Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Participant Shares
nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares = {}

-- Size: Participant Shares
nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.size = 4

-- Display: Participant Shares
nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.display = function(value)
  return "Participant Shares: "..value
end

-- Dissect: Participant Shares
nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.participant_shares, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nsmequities_aggregated_itch_v2_0.price = {}

-- Size: Price
nasdaq_nsmequities_aggregated_itch_v2_0.price.size = 4

-- Display: Price
nasdaq_nsmequities_aggregated_itch_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nasdaq_nsmequities_aggregated_itch_v2_0.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_aggregated_itch_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.display = function(value)
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
    return "Price Variation Indicator: Cannot Be Calculated (<whitespace>)"
  end

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Primary Market Maker
nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker = {}

-- Size: Primary Market Maker
nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.size = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.display = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary Market Maker (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary Market Maker (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_aggregated_itch_v2_0.reason = {}

-- Size: Reason
nasdaq_nsmequities_aggregated_itch_v2_0.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_aggregated_itch_v2_0.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt— Extraordinary Market Activity (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted For Information Requested By Listing Market (T12)"
  end
  if value == "H4" then
    return "Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Reason: Halt Regulatory Concern (H11)"
  end
  if value == "O1" then
    return "Reason: Operations Halt Contact Market Operations (O1)"
  end
  if value == "LUDP" then
    return "Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Reason: Volatility Trading Pause Straddle Condition (LUDS)"
  end
  if value == "MWC1" then
    return "Reason: Market Wide Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Reason: Market Wide Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Reason: Market Wide Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Reason: Market Wide Circuit Breaker Halt Carry Over From Previous Day (MWC0)"
  end
  if value == "IPO1" then
    return "Reason: Ipo Issue Not Yet Trading (IPO1)"
  end
  if value == "M1" then
    return "Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Reason: Quotation Not Available (M2)"
  end
  if value == " " then
    return "Reason: Reason Not Available (<whitespace>)"
  end
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Security Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Issues Reviewed Resolved Quotations Trading To Resume (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Satisfied Resolved Quotations Trading To Resume (R9)"
  end
  if value == "C3" then
    return "Reason: Issuer News Not Forthcoming Quotations Trading To Resume (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended Maintenance Requirements Met Resume (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded Filings Met Quotes Trades To Resume (C9)"
  end
  if value == "C11" then
    return "Reason: Trade Halt Concluded By Other Regulatory Auth Quotes Trades Resume (C11)"
  end
  if value == "MWCQ" then
    return "Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Reason: New Issue Available (R1)"
  end
  if value == "R2" then
    return "Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Reason: Ipo Security Released For Quotation (IPOQ)"
  end
  if value == "IPOE" then
    return "Reason: Ipo Security— Positioning Window Extension (IPOE)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_nsmequities_aggregated_itch_v2_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains In Effect (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restriction (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_aggregated_itch_v2_0.session = {}

-- Size: Session
nasdaq_nsmequities_aggregated_itch_v2_0.session.size = 10

-- Display: Session
nasdaq_nsmequities_aggregated_itch_v2_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_aggregated_itch_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.session.size
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

  local display = nasdaq_nsmequities_aggregated_itch_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.display = function(value)
  if value == "Y" then
    return "Short Sale Threshold Indicator: Restricted (Y)"
  end
  if value == "N" then
    return "Short Sale Threshold Indicator: Not Restricted (N)"
  end
  if value == " " then
    return "Short Sale Threshold Indicator: Not Available (<whitespace>)"
  end

  return "Short Sale Threshold Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Threshold Indicator
nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_aggregated_itch_v2_0.stock = {}

-- Size: Stock
nasdaq_nsmequities_aggregated_itch_v2_0.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_aggregated_itch_v2_0.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_aggregated_itch_v2_0.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size = 6

-- Display: Timestamp
nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_aggregated_itch_v2_0.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_aggregated_itch_v2_0.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_aggregated_itch_v2_0.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number = {}

-- Size: Tracking Number
nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Trading State
nasdaq_nsmequities_aggregated_itch_v2_0.trading_state = {}

-- Size: Trading State
nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.size = 1

-- Display: Trading State
nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.display = function(value)
  if value == "H" then
    return "Trading State: Halted (H)"
  end
  if value == "P" then
    return "Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Trading State: Quotation Only (Q)"
  end
  if value == "T" then
    return "Trading State: Trading (T)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price = {}

-- Size: Upper Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.size = 4

-- Display: Upper Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.display = function(value)
  return "Upper Auction Collar Price: "..value
end

-- Translate: Upper Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Auction Collar Price
nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.upper_auction_collar_price, range, value, display)

  return offset + length, value
end

-- Upper Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar = {}

-- Size: Upper Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.size = 4

-- Display: Upper Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.display = function(value)
  return "Upper Price Range Collar: "..value
end

-- Translate: Upper Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.translate = function(raw)
  return raw/10000
end

-- Dissect: Upper Price Range Collar
nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.translate(raw)
  local display = nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.upper_price_range_collar, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Aggregated Itch 2.0
-----------------------------------------------------------------------

-- Direct Listing With Capital Raise Price Discovery Message
nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message = {}

-- Size: Direct Listing With Capital Raise Price Discovery Message
nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.size

-- Display: Direct Listing With Capital Raise Price Discovery Message
nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Direct Listing With Capital Raise Price Discovery Message
nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Open Eligibility Status: Alpha
  index, open_eligibility_status = nasdaq_nsmequities_aggregated_itch_v2_0.open_eligibility_status.dissect(buffer, index, packet, parent)

  -- Minimum Allowable Price: Price (4)
  index, minimum_allowable_price = nasdaq_nsmequities_aggregated_itch_v2_0.minimum_allowable_price.dissect(buffer, index, packet, parent)

  -- Maximum Allowable Price: Price (4)
  index, maximum_allowable_price = nasdaq_nsmequities_aggregated_itch_v2_0.maximum_allowable_price.dissect(buffer, index, packet, parent)

  -- Near Execution Price: Price (4)
  index, near_execution_price = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_price.dissect(buffer, index, packet, parent)

  -- Near Execution Time: Integer
  index, near_execution_time = nasdaq_nsmequities_aggregated_itch_v2_0.near_execution_time.dissect(buffer, index, packet, parent)

  -- Lower Price Range Collar: Price (4)
  index, lower_price_range_collar = nasdaq_nsmequities_aggregated_itch_v2_0.lower_price_range_collar.dissect(buffer, index, packet, parent)

  -- Upper Price Range Collar: Price (4)
  index, upper_price_range_collar = nasdaq_nsmequities_aggregated_itch_v2_0.upper_price_range_collar.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Direct Listing With Capital Raise Price Discovery Message
nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.direct_listing_with_capital_raise_price_discovery_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message = {}

-- Size: Retail Price Improvement Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.size

-- Display: Retail Price Improvement Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Interest Flag: Alpha
  index, interest_flag = nasdaq_nsmequities_aggregated_itch_v2_0.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.retail_price_improvement_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Order Imbalance Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message = {}

-- Size: Net Order Imbalance Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.far_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.near_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.size

-- Display: Net Order Imbalance Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = nasdaq_nsmequities_aggregated_itch_v2_0.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: Alpha
  index, imbalance_direction = nasdaq_nsmequities_aggregated_itch_v2_0.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Far Price: Price (4)
  index, far_price = nasdaq_nsmequities_aggregated_itch_v2_0.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: Price (4)
  index, near_price = nasdaq_nsmequities_aggregated_itch_v2_0.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: Price (4)
  index, current_reference_price = nasdaq_nsmequities_aggregated_itch_v2_0.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_nsmequities_aggregated_itch_v2_0.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: Alpha
  index, price_variation_indicator = nasdaq_nsmequities_aggregated_itch_v2_0.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.net_order_imbalance_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message = {}

-- Size: Price Level Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.market_side.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.mpid.size

-- Display: Price Level Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Market Side: Alpha
  index, market_side = nasdaq_nsmequities_aggregated_itch_v2_0.market_side.dissect(buffer, index, packet, parent)

  -- Participant Shares: Integer
  index, participant_shares = nasdaq_nsmequities_aggregated_itch_v2_0.participant_shares.dissect(buffer, index, packet, parent)

  -- Aggregate Shares: Integer
  index, aggregate_shares = nasdaq_nsmequities_aggregated_itch_v2_0.aggregate_shares.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Price: Price (4)
  index, price = nasdaq_nsmequities_aggregated_itch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Mpid: Alpha
  index, mpid = nasdaq_nsmequities_aggregated_itch_v2_0.mpid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.price_level_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.market_code.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_nsmequities_aggregated_itch_v2_0.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Luld Auction Collar Message
nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message = {}

-- Size: Luld Auction Collar Message
nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.size

-- Display: Luld Auction Collar Message
nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Luld Auction Collar Message
nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Price (4)
  index, auction_collar_reference_price = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar Price: Price (4)
  index, upper_auction_collar_price = nasdaq_nsmequities_aggregated_itch_v2_0.upper_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar Price: Price (4)
  index, lower_auction_collar_price = nasdaq_nsmequities_aggregated_itch_v2_0.lower_auction_collar_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Extension: Integer
  index, auction_collar_extension = nasdaq_nsmequities_aggregated_itch_v2_0.auction_collar_extension.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Luld Auction Collar Message
nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.luld_auction_collar_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.fields(buffer, offset, packet, parent)
  end
end

-- Ipo Quoting Period Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message = {}

-- Size: Ipo Quoting Period Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.size

-- Display: Ipo Quoting Period Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alpha
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (4)
  index, ipo_price = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Status Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message = {}

-- Size: Mwcb Status Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.size

-- Display: Mwcb Status Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Breached Level: Alpha
  index, breached_level = nasdaq_nsmequities_aggregated_itch_v2_0.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mwcb_status_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.level_1.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.level_2.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_nsmequities_aggregated_itch_v2_0.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_nsmequities_aggregated_itch_v2_0.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_nsmequities_aggregated_itch_v2_0.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Participant Position Message
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message = {}

-- Size: Market Participant Position Message
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.mpid.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.size

-- Display: Market Participant Position Message
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Participant Position Message
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Mpid: Alpha
  index, mpid = nasdaq_nsmequities_aggregated_itch_v2_0.mpid.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Primary Market Maker: Alpha
  index, primary_market_maker = nasdaq_nsmequities_aggregated_itch_v2_0.primary_market_maker.dissect(buffer, index, packet, parent)

  -- Market Maker Mode: Alpha
  index, market_maker_mode = nasdaq_nsmequities_aggregated_itch_v2_0.market_maker_mode.dissect(buffer, index, packet, parent)

  -- Market Participant State: Alpha
  index, market_participant_state = nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Position Message
nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.market_participant_position_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message = {}

-- Size: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.size

-- Display: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alpha
  index, reg_sho_action = nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Short Sale Price Test Restricted Indicator Message
nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.reg_sho_short_sale_price_test_restricted_indicator_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = nasdaq_nsmequities_aggregated_itch_v2_0.trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = nasdaq_nsmequities_aggregated_itch_v2_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.stock.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.market_category.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: Alpha
  index, stock = nasdaq_nsmequities_aggregated_itch_v2_0.stock.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_nsmequities_aggregated_itch_v2_0.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_nsmequities_aggregated_itch_v2_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_nsmequities_aggregated_itch_v2_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_nsmequities_aggregated_itch_v2_0.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_nsmequities_aggregated_itch_v2_0.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: Alpha
  index, issue_sub_type = nasdaq_nsmequities_aggregated_itch_v2_0.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_nsmequities_aggregated_itch_v2_0.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_nsmequities_aggregated_itch_v2_0.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_nsmequities_aggregated_itch_v2_0.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_nsmequities_aggregated_itch_v2_0.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_nsmequities_aggregated_itch_v2_0.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_nsmequities_aggregated_itch_v2_0.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_nsmequities_aggregated_itch_v2_0.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_nsmequities_aggregated_itch_v2_0.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_nsmequities_aggregated_itch_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nsmequities_aggregated_itch_v2_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_aggregated_itch_v2_0.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_aggregated_itch_v2_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Short Sale Price Test Restricted Indicator Message
  if message_type == "Y" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.reg_sho_short_sale_price_test_restricted_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Position Message
  if message_type == "P" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.market_participant_position_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.mwcb_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.ipo_quoting_period_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Luld Auction Collar Message
  if message_type == "J" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.luld_auction_collar_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.operational_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Update Message
  if message_type == "U" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.price_level_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Indicator Message
  if message_type == "I" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.net_order_imbalance_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.retail_price_improvement_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Direct Listing With Capital Raise Price Discovery Message
  if message_type == "O" then
    return nasdaq_nsmequities_aggregated_itch_v2_0.direct_listing_with_capital_raise_price_discovery_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_aggregated_itch_v2_0.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_aggregated_itch_v2_0.message_header.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.message_length.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.message_type.size

-- Display: Message Header
nasdaq_nsmequities_aggregated_itch_v2_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_aggregated_itch_v2_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_aggregated_itch_v2_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = nasdaq_nsmequities_aggregated_itch_v2_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_aggregated_itch_v2_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_aggregated_itch_v2_0.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_aggregated_itch_v2_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_aggregated_itch_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_aggregated_itch_v2_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_aggregated_itch_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = nasdaq_nsmequities_aggregated_itch_v2_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_aggregated_itch_v2_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_aggregated_itch_v2_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_aggregated_itch_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_aggregated_itch_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_nsmequities_aggregated_itch_v2_0.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_aggregated_itch_v2_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_nsmequities_aggregated_itch_v2_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_nsmequities_aggregated_itch_v2_0.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.size =
  nasdaq_nsmequities_aggregated_itch_v2_0.session.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.size + 
  nasdaq_nsmequities_aggregated_itch_v2_0.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_aggregated_itch_v2_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_aggregated_itch_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_aggregated_itch_v2_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_aggregated_itch_v2_0.packet = {}

-- Dissect Packet
nasdaq_nsmequities_aggregated_itch_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_aggregated_itch_v2_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_aggregated_itch_v2_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_aggregated_itch_v2_0.init()
end

-- Dissector for Nasdaq NsmEquities Aggregated Itch 2.0
function omi_nasdaq_nsmequities_aggregated_itch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_aggregated_itch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_aggregated_itch_v2_0, buffer(), omi_nasdaq_nsmequities_aggregated_itch_v2_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_aggregated_itch_v2_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_nsmequities_aggregated_itch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_nsmequities_aggregated_itch_v2_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Aggregated Itch 2.0
local function omi_nasdaq_nsmequities_aggregated_itch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_aggregated_itch_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_aggregated_itch_v2_0
  omi_nasdaq_nsmequities_aggregated_itch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Aggregated Itch 2.0
omi_nasdaq_nsmequities_aggregated_itch_v2_0:register_heuristic("udp", omi_nasdaq_nsmequities_aggregated_itch_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 2.0
--   Date: Thursday, February 19, 2026
--   Specification: TVAggSpecification.pdf
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
