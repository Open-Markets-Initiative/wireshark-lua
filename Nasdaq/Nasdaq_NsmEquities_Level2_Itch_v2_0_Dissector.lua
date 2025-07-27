-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Level2 Itch 2.0 Protocol
local nasdaq_nsmequities_level2_itch_v2_0 = Proto("Nasdaq.NsmEquities.Level2.Itch.v2.0.Lua", "Nasdaq NsmEquities Level2 Itch 2.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_nsmequities_level2_itch_v2_0_display = {}
local nasdaq_nsmequities_level2_itch_v2_0_dissect = {}
local nasdaq_nsmequities_level2_itch_v2_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Level2 Itch 2.0 Fields
nasdaq_nsmequities_level2_itch_v2_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.level2.itch.v2.0.authenticity", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.nsmequities.level2.itch.v2.0.breachedlevel", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.count = ProtoField.new("Count", "nasdaq.nsmequities.level2.itch.v2.0.count", ftypes.UINT16)
nasdaq_nsmequities_level2_itch_v2_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.level2.itch.v2.0.currenttradingstate", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.level2.itch.v2.0.etpflag", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.level2.itch.v2.0.etpleveragefactor", ftypes.UINT32)
nasdaq_nsmequities_level2_itch_v2_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.level2.itch.v2.0.eventcode", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.level2.itch.v2.0.financialstatusindicator", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.nsmequities.level2.itch.v2.0.interestflag", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.level2.itch.v2.0.inverseindicator", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.level2.itch.v2.0.ipoflag", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.level2.itch.v2.0.ipoprice", ftypes.DOUBLE)
nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.level2.itch.v2.0.ipoquotationreleasequalifier", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.level2.itch.v2.0.ipoquotationreleasetime", ftypes.UINT32)
nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.nsmequities.level2.itch.v2.0.ipoquotingperiodupdatemessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.level2.itch.v2.0.issueclassification", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.nsmequities.level2.itch.v2.0.issuesubtype", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.length = ProtoField.new("Length", "nasdaq.nsmequities.level2.itch.v2.0.length", ftypes.UINT16)
nasdaq_nsmequities_level2_itch_v2_0.fields.level_1 = ProtoField.new("Level 1", "nasdaq.nsmequities.level2.itch.v2.0.level1", ftypes.DOUBLE)
nasdaq_nsmequities_level2_itch_v2_0.fields.level_2 = ProtoField.new("Level 2", "nasdaq.nsmequities.level2.itch.v2.0.level2", ftypes.DOUBLE)
nasdaq_nsmequities_level2_itch_v2_0.fields.level_3 = ProtoField.new("Level 3", "nasdaq.nsmequities.level2.itch.v2.0.level3", ftypes.DOUBLE)
nasdaq_nsmequities_level2_itch_v2_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.level2.itch.v2.0.luldreferencepricetier", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.level2.itch.v2.0.marketcategory", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_code = ProtoField.new("Market Code", "nasdaq.nsmequities.level2.itch.v2.0.marketcode", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_maker_mode = ProtoField.new("Market Maker Mode", "nasdaq.nsmequities.level2.itch.v2.0.marketmakermode", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_participant_bidask_update_message = ProtoField.new("Market Participant Bidask Update Message", "nasdaq.nsmequities.level2.itch.v2.0.marketparticipantbidaskupdatemessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_participant_state = ProtoField.new("Market Participant State", "nasdaq.nsmequities.level2.itch.v2.0.marketparticipantstate", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.market_side = ProtoField.new("Market Side", "nasdaq.nsmequities.level2.itch.v2.0.marketside", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.level2.itch.v2.0.message", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.level2.itch.v2.0.messageheader", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.level2.itch.v2.0.messagetype", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.mpid = ProtoField.new("Mpid", "nasdaq.nsmequities.level2.itch.v2.0.mpid", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.nsmequities.level2.itch.v2.0.mwcbdeclinelevelmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.mwcb_status_message = ProtoField.new("Mwcb Status Message", "nasdaq.nsmequities.level2.itch.v2.0.mwcbstatusmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.nsmequities.level2.itch.v2.0.operationalhaltaction", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.nsmequities.level2.itch.v2.0.operationalhaltmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.level2.itch.v2.0.packet", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.level2.itch.v2.0.packetheader", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.participant_position_summary_message = ProtoField.new("Participant Position Summary Message", "nasdaq.nsmequities.level2.itch.v2.0.participantpositionsummarymessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.participant_shares = ProtoField.new("Participant Shares", "nasdaq.nsmequities.level2.itch.v2.0.participantshares", ftypes.UINT32)
nasdaq_nsmequities_level2_itch_v2_0.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.level2.itch.v2.0.payload", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.price = ProtoField.new("Price", "nasdaq.nsmequities.level2.itch.v2.0.price", ftypes.DOUBLE)
nasdaq_nsmequities_level2_itch_v2_0.fields.primary_market_maker = ProtoField.new("Primary Market Maker", "nasdaq.nsmequities.level2.itch.v2.0.primarymarketmaker", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.level2.itch.v2.0.regshoaction", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.nsmequities.level2.itch.v2.0.regshorestrictionmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.retail_price_interest_indicator_message = ProtoField.new("Retail Price Interest Indicator Message", "nasdaq.nsmequities.level2.itch.v2.0.retailpriceinterestindicatormessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.level2.itch.v2.0.roundlotsize", ftypes.UINT32)
nasdaq_nsmequities_level2_itch_v2_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.level2.itch.v2.0.roundlotsonly", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.nsmequities.level2.itch.v2.0.sequence", ftypes.UINT64)
nasdaq_nsmequities_level2_itch_v2_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.level2.itch.v2.0.session", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.level2.itch.v2.0.shortsalethresholdindicator", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.level2.itch.v2.0.stock", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.level2.itch.v2.0.stockdirectorymessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.level2.itch.v2.0.stocktradingactionmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.level2.itch.v2.0.systemeventmessage", ftypes.STRING)
nasdaq_nsmequities_level2_itch_v2_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.level2.itch.v2.0.timestamp", ftypes.UINT64)
nasdaq_nsmequities_level2_itch_v2_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.level2.itch.v2.0.trackingnumber", ftypes.UINT16)
nasdaq_nsmequities_level2_itch_v2_0.fields.trading_action_reason = ProtoField.new("Trading Action Reason", "nasdaq.nsmequities.level2.itch.v2.0.tradingactionreason", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Level2 Itch 2.0 Element Dissection Options
show.ipo_quoting_period_update_message = true
show.market_participant_bidask_update_message = true
show.message = true
show.message_header = true
show.mwcb_decline_level_message = true
show.mwcb_status_message = true
show.operational_halt_message = true
show.packet = true
show.packet_header = true
show.participant_position_summary_message = true
show.reg_sho_restriction_message = true
show.retail_price_interest_indicator_message = true
show.stock_directory_message = true
show.stock_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq NsmEquities Level2 Itch 2.0 Show Options
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_ipo_quoting_period_update_message = Pref.bool("Show Ipo Quoting Period Update Message", show.ipo_quoting_period_update_message, "Parse and add Ipo Quoting Period Update Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_market_participant_bidask_update_message = Pref.bool("Show Market Participant Bidask Update Message", show.market_participant_bidask_update_message, "Parse and add Market Participant Bidask Update Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_decline_level_message = Pref.bool("Show Mwcb Decline Level Message", show.mwcb_decline_level_message, "Parse and add Mwcb Decline Level Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_status_message = Pref.bool("Show Mwcb Status Message", show.mwcb_status_message, "Parse and add Mwcb Status Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_operational_halt_message = Pref.bool("Show Operational Halt Message", show.operational_halt_message, "Parse and add Operational Halt Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_participant_position_summary_message = Pref.bool("Show Participant Position Summary Message", show.participant_position_summary_message, "Parse and add Participant Position Summary Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_retail_price_interest_indicator_message = Pref.bool("Show Retail Price Interest Indicator Message", show.retail_price_interest_indicator_message, "Parse and add Retail Price Interest Indicator Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_nsmequities_level2_itch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_nsmequities_level2_itch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ipo_quoting_period_update_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_ipo_quoting_period_update_message then
    show.ipo_quoting_period_update_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_ipo_quoting_period_update_message
    changed = true
  end
  if show.market_participant_bidask_update_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_market_participant_bidask_update_message then
    show.market_participant_bidask_update_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_market_participant_bidask_update_message
    changed = true
  end
  if show.message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message then
    show.message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message_header then
    show.message_header = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_message_header
    changed = true
  end
  if show.mwcb_decline_level_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_decline_level_message then
    show.mwcb_decline_level_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_decline_level_message
    changed = true
  end
  if show.mwcb_status_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_status_message then
    show.mwcb_status_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_mwcb_status_message
    changed = true
  end
  if show.operational_halt_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_operational_halt_message then
    show.operational_halt_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_operational_halt_message
    changed = true
  end
  if show.packet ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet then
    show.packet = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet_header then
    show.packet_header = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.participant_position_summary_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_participant_position_summary_message then
    show.participant_position_summary_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_participant_position_summary_message
    changed = true
  end
  if show.reg_sho_restriction_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.retail_price_interest_indicator_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_retail_price_interest_indicator_message then
    show.retail_price_interest_indicator_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_retail_price_interest_indicator_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_nsmequities_level2_itch_v2_0.prefs.show_payload then
    show.payload = nasdaq_nsmequities_level2_itch_v2_0.prefs.show_payload
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
-- Dissect Nasdaq NsmEquities Level2 Itch 2.0
-----------------------------------------------------------------------

-- Size: Ipo Price
nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_price = 10

-- Display: Ipo Price
nasdaq_nsmequities_level2_itch_v2_0_display.ipo_price = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
translate.ipo_price = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_price
  local range = buffer(offset, length)
  local raw = range:bytes():tohex(false, " ")
  local value = translate.ipo_price(raw)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.ipo_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_qualifier = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quotation_release_qualifier = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quotation_release_qualifier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quotation_release_qualifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_time = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quotation_release_time = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quotation_release_time = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_time
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quotation_release_time(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_nsmequities_level2_itch_v2_0_size_of.stock = 8

-- Display: Stock
nasdaq_nsmequities_level2_itch_v2_0_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_level2_itch_v2_0_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.stock
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_nsmequities_level2_itch_v2_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_nsmequities_level2_itch_v2_0_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ipo Quoting Period Update Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quoting_period_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_time

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quotation_release_qualifier

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_price

  return index
end

-- Display: Ipo Quoting Period Update Message
nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quoting_period_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quoting_period_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quotation_release_time(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quotation_release_qualifier(buffer, index, packet, parent)

  -- Ipo Price: 10 Byte Unsigned Fixed Width Integer
  index, ipo_price = nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quoting_period_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ipo_quoting_period_update_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quoting_period_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.ipo_quoting_period_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_quoting_period_update_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quoting_period_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Breached Level
nasdaq_nsmequities_level2_itch_v2_0_size_of.breached_level = 1

-- Display: Breached Level
nasdaq_nsmequities_level2_itch_v2_0_display.breached_level = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.breached_level = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.breached_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.breached_level(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Status Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_status_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.breached_level

  return index
end

-- Display: Mwcb Status Message
nasdaq_nsmequities_level2_itch_v2_0_display.mwcb_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Status Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Breached Level: 1 Byte Ascii String Enum with 3 values
  index, breached_level = nasdaq_nsmequities_level2_itch_v2_0_dissect.breached_level(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Status Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_status_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.mwcb_status_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.mwcb_status_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Level 3
nasdaq_nsmequities_level2_itch_v2_0_size_of.level_3 = 8

-- Display: Level 3
nasdaq_nsmequities_level2_itch_v2_0_display.level_3 = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
translate.level_3 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_nsmequities_level2_itch_v2_0_dissect.level_3 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.level_3
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_3(raw)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.level_3(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.level_3, range, value, display)

  return offset + length, value
end

-- Size: Level 2
nasdaq_nsmequities_level2_itch_v2_0_size_of.level_2 = 8

-- Display: Level 2
nasdaq_nsmequities_level2_itch_v2_0_display.level_2 = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
translate.level_2 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_nsmequities_level2_itch_v2_0_dissect.level_2 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.level_2
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_2(raw)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.level_2(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.level_2, range, value, display)

  return offset + length, value
end

-- Size: Level 1
nasdaq_nsmequities_level2_itch_v2_0_size_of.level_1 = 8

-- Display: Level 1
nasdaq_nsmequities_level2_itch_v2_0_display.level_1 = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
translate.level_1 = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_nsmequities_level2_itch_v2_0_dissect.level_1 = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.level_1
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.level_1(raw)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.level_1(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.level_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mwcb Decline Level Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_decline_level_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.level_1

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.level_2

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.level_3

  return index
end

-- Display: Mwcb Decline Level Message
nasdaq_nsmequities_level2_itch_v2_0_display.mwcb_decline_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_decline_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Level 1: 8 Byte Unsigned Fixed Width Integer
  index, level_1 = nasdaq_nsmequities_level2_itch_v2_0_dissect.level_1(buffer, index, packet, parent)

  -- Level 2: 8 Byte Unsigned Fixed Width Integer
  index, level_2 = nasdaq_nsmequities_level2_itch_v2_0_dissect.level_2(buffer, index, packet, parent)

  -- Level 3: 8 Byte Unsigned Fixed Width Integer
  index, level_3 = nasdaq_nsmequities_level2_itch_v2_0_dissect.level_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_decline_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mwcb_decline_level_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_decline_level_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.mwcb_decline_level_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.mwcb_decline_level_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_decline_level_message_fields(buffer, offset, packet, parent)
end

-- Size: Interest Flag
nasdaq_nsmequities_level2_itch_v2_0_size_of.interest_flag = 1

-- Display: Interest Flag
nasdaq_nsmequities_level2_itch_v2_0_display.interest_flag = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.interest_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.interest_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.interest_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Price Interest Indicator Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.retail_price_interest_indicator_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.interest_flag

  return index
end

-- Display: Retail Price Interest Indicator Message
nasdaq_nsmequities_level2_itch_v2_0_display.retail_price_interest_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Interest Indicator Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.retail_price_interest_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Interest Flag: 1 Byte Ascii String Enum with 4 values
  index, interest_flag = nasdaq_nsmequities_level2_itch_v2_0_dissect.interest_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Interest Indicator Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.retail_price_interest_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_interest_indicator_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.retail_price_interest_indicator_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.retail_price_interest_indicator_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.retail_price_interest_indicator_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.retail_price_interest_indicator_message_fields(buffer, offset, packet, parent)
end

-- Size: Mpid
nasdaq_nsmequities_level2_itch_v2_0_size_of.mpid = 4

-- Display: Mpid
nasdaq_nsmequities_level2_itch_v2_0_display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
nasdaq_nsmequities_level2_itch_v2_0_dissect.mpid = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.mpid
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.mpid(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.mpid, range, value, display)

  return offset + length, value
end

-- Size: Price
nasdaq_nsmequities_level2_itch_v2_0_size_of.price = 4

-- Display: Price
nasdaq_nsmequities_level2_itch_v2_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw/10000
end

-- Dissect: Price
nasdaq_nsmequities_level2_itch_v2_0_dissect.price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.price(raw)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Participant Shares
nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_shares = 4

-- Display: Participant Shares
nasdaq_nsmequities_level2_itch_v2_0_display.participant_shares = function(value)
  return "Participant Shares: "..value
end

-- Dissect: Participant Shares
nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_shares
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.participant_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.participant_shares, range, value, display)

  return offset + length, value
end

-- Size: Market Side
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_side = 1

-- Display: Market Side
nasdaq_nsmequities_level2_itch_v2_0_display.market_side = function(value)
  if value == "B" then
    return "Market Side: Bid Update (B)"
  end
  if value == "S" then
    return "Market Side: Offer Ask Update (S)"
  end

  return "Market Side: Unknown("..value..")"
end

-- Dissect: Market Side
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_side = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_side(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Participant Bidask Update Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_bidask_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.market_side

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_shares

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.price

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.mpid

  return index
end

-- Display: Market Participant Bidask Update Message
nasdaq_nsmequities_level2_itch_v2_0_display.market_participant_bidask_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Participant Bidask Update Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_bidask_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Market Side: 1 Byte Ascii String Enum with 2 values
  index, market_side = nasdaq_nsmequities_level2_itch_v2_0_dissect.market_side(buffer, index, packet, parent)

  -- Participant Shares: 4 Byte Unsigned Fixed Width Integer
  index, participant_shares = nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = nasdaq_nsmequities_level2_itch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_nsmequities_level2_itch_v2_0_dissect.mpid(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Participant Bidask Update Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_bidask_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_participant_bidask_update_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_bidask_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_participant_bidask_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_participant_bidask_update_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_bidask_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Operational Halt Action
nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_action = 1

-- Display: Operational Halt Action
nasdaq_nsmequities_level2_itch_v2_0_display.operational_halt_action = function(value)
  if value == "H" then
    return "Operational Halt Action: Trading Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Trading Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_action = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.operational_halt_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Size: Market Code
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_code = 1

-- Display: Market Code
nasdaq_nsmequities_level2_itch_v2_0_display.market_code = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Operational Halt Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.market_code

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_action

  return index
end

-- Display: Operational Halt Message
nasdaq_nsmequities_level2_itch_v2_0_display.operational_halt_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Market Code: 1 Byte Ascii String Enum with 3 values
  index, market_code = nasdaq_nsmequities_level2_itch_v2_0_dissect.market_code(buffer, index, packet, parent)

  -- Operational Halt Action: 1 Byte Ascii String Enum with 2 values
  index, operational_halt_action = nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.operational_halt_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.operational_halt_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.operational_halt_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Participant State
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_state = 1

-- Display: Market Participant State
nasdaq_nsmequities_level2_itch_v2_0_display.market_participant_state = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_participant_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_participant_state, range, value, display)

  return offset + length, value
end

-- Size: Market Maker Mode
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_maker_mode = 1

-- Display: Market Maker Mode
nasdaq_nsmequities_level2_itch_v2_0_display.market_maker_mode = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_maker_mode = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_maker_mode
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_maker_mode(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_maker_mode, range, value, display)

  return offset + length, value
end

-- Size: Primary Market Maker
nasdaq_nsmequities_level2_itch_v2_0_size_of.primary_market_maker = 1

-- Display: Primary Market Maker
nasdaq_nsmequities_level2_itch_v2_0_display.primary_market_maker = function(value)
  if value == "Y" then
    return "Primary Market Maker: Primary (Y)"
  end
  if value == "N" then
    return "Primary Market Maker: Non Primary (N)"
  end

  return "Primary Market Maker: Unknown("..value..")"
end

-- Dissect: Primary Market Maker
nasdaq_nsmequities_level2_itch_v2_0_dissect.primary_market_maker = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.primary_market_maker
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.primary_market_maker(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.primary_market_maker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participant Position Summary Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_position_summary_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.mpid

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.primary_market_maker

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.market_maker_mode

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_state

  return index
end

-- Display: Participant Position Summary Message
nasdaq_nsmequities_level2_itch_v2_0_display.participant_position_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant Position Summary Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_position_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = nasdaq_nsmequities_level2_itch_v2_0_dissect.mpid(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Primary Market Maker: 1 Byte Ascii String Enum with 2 values
  index, primary_market_maker = nasdaq_nsmequities_level2_itch_v2_0_dissect.primary_market_maker(buffer, index, packet, parent)

  -- Market Maker Mode: 1 Byte Ascii String Enum with 5 values
  index, market_maker_mode = nasdaq_nsmequities_level2_itch_v2_0_dissect.market_maker_mode(buffer, index, packet, parent)

  -- Market Participant State: 1 Byte Ascii String Enum with 5 values
  index, market_participant_state = nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Position Summary Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_position_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.participant_position_summary_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_position_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.participant_position_summary_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.participant_position_summary_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_position_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Reg Sho Action
nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_level2_itch_v2_0_display.reg_sho_action = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Restriction Message
nasdaq_nsmequities_level2_itch_v2_0_display.reg_sho_restriction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_restriction_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_restriction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.reg_sho_restriction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.reg_sho_restriction_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Action Reason
nasdaq_nsmequities_level2_itch_v2_0_size_of.trading_action_reason = 4

-- Display: Trading Action Reason
nasdaq_nsmequities_level2_itch_v2_0_display.trading_action_reason = function(value)
  if value == "T1" then
    return "Trading Action Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Trading Action Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Trading Action Reason: Single Security Trading Pause In Effect (T5)"
  end
  if value == "T6" then
    return "Trading Action Reason: Regulatory Halt (T6)"
  end
  if value == "T8" then
    return "Trading Action Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Trading Action Reason: Trading Halted (T12)"
  end
  if value == "H4" then
    return "Trading Action Reason: Halt Non Compliance (H4)"
  end
  if value == "H9" then
    return "Trading Action Reason: Halt Filings Not Current (H9)"
  end
  if value == "H10" then
    return "Trading Action Reason: Halt Sec Trading Suspension (H10)"
  end
  if value == "H11" then
    return "Trading Action Reason: Halt Regulatory Concern (H11)"
  end
  if value == "LUDP" then
    return "Trading Action Reason: Volatility Trading Pause (LUDP)"
  end
  if value == "LUDS" then
    return "Trading Action Reason: Straddle Condition Trading Pause (LUDS)"
  end
  if value == "MWC1" then
    return "Trading Action Reason: Circuit Breaker Halt Level 1 (MWC1)"
  end
  if value == "MWC2" then
    return "Trading Action Reason: Circuit Breaker Halt Level 2 (MWC2)"
  end
  if value == "MWC3" then
    return "Trading Action Reason: Circuit Breaker Halt Level 3 (MWC3)"
  end
  if value == "MWC0" then
    return "Trading Action Reason: Carry Over Circuit Breaker Halt (MWC0)"
  end
  if value == "O1" then
    return "Trading Action Reason: Operations Halt (O1)"
  end
  if value == "IPO1" then
    return "Trading Action Reason: Ipo Issue (IPO1)"
  end
  if value == "M1" then
    return "Trading Action Reason: Corporate Action (M1)"
  end
  if value == "M2" then
    return "Trading Action Reason: Not Available (M2)"
  end
  if value == "T3" then
    return "Trading Action Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Trading Action Reason: Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Trading Action Reason: Qualifications Issues Resolved (R4)"
  end
  if value == "R9" then
    return "Trading Action Reason: Filing Requirements Satisfied (R9)"
  end
  if value == "C3" then
    return "Trading Action Reason: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Trading Action Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Trading Action Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Trading Action Reason: Trade Halt Concluded By Other Regulatory Authority (C11)"
  end
  if value == "MWCQ" then
    return "Trading Action Reason: Market Wide Circuit Breaker Resumption (MWCQ)"
  end
  if value == "R1" then
    return "Trading Action Reason: New Issue (R1)"
  end
  if value == "R2" then
    return "Trading Action Reason: Issue Available (R2)"
  end
  if value == "IPOQ" then
    return "Trading Action Reason: Ipo Security Released (IPOQ)"
  end
  if value == "IPOE" then
    return "Trading Action Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == "" then
    return "Trading Action Reason: Reason Not Available (<whitespace>)"
  end

  return "Trading Action Reason: Unknown("..value..")"
end

-- Dissect: Trading Action Reason
nasdaq_nsmequities_level2_itch_v2_0_dissect.trading_action_reason = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.trading_action_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.trading_action_reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.trading_action_reason, range, value, display)

  return offset + length, value
end

-- Size: Current Trading State
nasdaq_nsmequities_level2_itch_v2_0_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_nsmequities_level2_itch_v2_0_display.current_trading_state = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only Period (Q)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_nsmequities_level2_itch_v2_0_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.current_trading_state

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.trading_action_reason

  return index
end

-- Display: Stock Trading Action Message
nasdaq_nsmequities_level2_itch_v2_0_display.stock_trading_action_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 4 values
  index, current_trading_state = nasdaq_nsmequities_level2_itch_v2_0_dissect.current_trading_state(buffer, index, packet, parent)

  -- Trading Action Reason: 4 Byte Ascii String Enum with 34 values
  index, trading_action_reason = nasdaq_nsmequities_level2_itch_v2_0_dissect.trading_action_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_trading_action_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_trading_action_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_trading_action_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.stock_trading_action_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.stock_trading_action_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_trading_action_message_fields(buffer, offset, packet, parent)
end

-- Size: Inverse Indicator
nasdaq_nsmequities_level2_itch_v2_0_size_of.inverse_indicator = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_level2_itch_v2_0_display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_level2_itch_v2_0_dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_level2_itch_v2_0_display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_level2_itch_v2_0_dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_flag = 1

-- Display: Etp Flag
nasdaq_nsmequities_level2_itch_v2_0_display.etp_flag = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_level2_itch_v2_0_size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_level2_itch_v2_0_display.luld_reference_price_tier = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_flag = 1

-- Display: Ipo Flag
nasdaq_nsmequities_level2_itch_v2_0_display.ipo_flag = function(value)
  if value == "Y" then
    return "Ipo Flag: Set Up For Ipo Release (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Set Up For Ipo Release (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_level2_itch_v2_0_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_level2_itch_v2_0_display.short_sale_threshold_indicator = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_nsmequities_level2_itch_v2_0_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_nsmequities_level2_itch_v2_0_display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_level2_itch_v2_0_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Subtype
nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_subtype = 2

-- Display: Issue Subtype
nasdaq_nsmequities_level2_itch_v2_0_display.issue_subtype = function(value)
  if value == "A" then
    return "Issue Subtype: Preferred Trust Securities (A)"
  end
  if value == "AI" then
    return "Issue Subtype: Alpha Index Et Ns (AI)"
  end
  if value == "B" then
    return "Issue Subtype: Index Based Derivative (B)"
  end
  if value == "C" then
    return "Issue Subtype: Common Shares (C)"
  end
  if value == "CB" then
    return "Issue Subtype: Commodity Based Trust Shares (CB)"
  end
  if value == "CF" then
    return "Issue Subtype: Commodity Futures Trust Shares (CF)"
  end
  if value == "CL" then
    return "Issue Subtype: Currency Trust Shares (CL)"
  end
  if value == "CM" then
    return "Issue Subtype: Commodity Index Trust Shares (CM)"
  end
  if value == "CO" then
    return "Issue Subtype: Collateralized Mortgage Obligation (CO)"
  end
  if value == "CT" then
    return "Issue Subtype: Currency Trust Shares (CT)"
  end
  if value == "CU" then
    return "Issue Subtype: Commodity­ Currency (CU)"
  end
  if value == "CW" then
    return "Issue Subtype: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Subtype: Global Depositary (D)"
  end
  if value == "E" then
    return "Issue Subtype: Etf­ Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Subtype: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Subtype: Etn Equity (EI)"
  end
  if value == "EM" then
    return "Issue Subtype: Next Shares Exchange (EM)"
  end
  if value == "EN" then
    return "Issue Subtype: Exchange Traded Notes (EN)"
  end
  if value == "EU" then
    return "Issue Subtype: Equity Units (EU)"
  end
  if value == "F" then
    return "Issue Subtype: Holdrs (F)"
  end
  if value == "FI" then
    return "Issue Subtype: Etn Fixed Income (FI)"
  end
  if value == "FL" then
    return "Issue Subtype: Etn Futures (FL)"
  end
  if value == "G" then
    return "Issue Subtype: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Subtype: Etf (I)"
  end
  if value == "IR" then
    return "Issue Subtype: Interest (IR)"
  end
  if value == "IW" then
    return "Issue Subtype: Index (IW)"
  end
  if value == "IX" then
    return "Issue Subtype: Index (IX)"
  end
  if value == "J" then
    return "Issue Subtype: Corporate (J)"
  end
  if value == "L" then
    return "Issue Subtype: Contingent (L)"
  end
  if value == "LL" then
    return "Issue Subtype: Llc (LL)"
  end
  if value == "M" then
    return "Issue Subtype: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Subtype: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Subtype: Etn (ML)"
  end
  if value == "MT" then
    return "Issue Subtype: Managed Trust Securities (MT)"
  end
  if value == "N" then
    return "Issue Subtype: Ny Registry Shares (N)"
  end
  if value == "O" then
    return "Issue Subtype: Open Ended Mutual Fund (O)"
  end
  if value == "P" then
    return "Issue Subtype: Privately Held Security (P)"
  end
  if value == "PP" then
    return "Issue Subtype: Poison Pill (PP)"
  end
  if value == "PU" then
    return "Issue Subtype: Partnership Units (PU)"
  end
  if value == "Q" then
    return "Issue Subtype: Closed End Funds (Q)"
  end
  if value == "R" then
    return "Issue Subtype: Reg S (R)"
  end
  if value == "RC" then
    return "Issue Subtype: Commodity Redeemable (RC)"
  end
  if value == "RF" then
    return "Issue Subtype: Etn (RF)"
  end
  if value == "RT" then
    return "Issue Subtype: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Subtype: Commodity­ Redeemable (RU)"
  end
  if value == "S" then
    return "Issue Subtype: Seed (S)"
  end
  if value == "SC" then
    return "Issue Subtype: Spot Rate Closing (SC)"
  end
  if value == "SI" then
    return "Issue Subtype: Spot Rate Intraday (SI)"
  end
  if value == "T" then
    return "Issue Subtype: Tracking Stock (T)"
  end
  if value == "TC" then
    return "Issue Subtype: Trust Certificates (TC)"
  end
  if value == "TU" then
    return "Issue Subtype: Trust Units (TU)"
  end
  if value == "U" then
    return "Issue Subtype: Portal (U)"
  end
  if value == "V" then
    return "Issue Subtype: Contingent Value Right (V)"
  end
  if value == "W" then
    return "Issue Subtype: Trust Issued Receipts (W)"
  end
  if value == "WC" then
    return "Issue Subtype: World Currency Option (WC)"
  end
  if value == "X" then
    return "Issue Subtype: Trust (X)"
  end
  if value == "Y" then
    return "Issue Subtype: Other (Y)"
  end
  if value == "Z" then
    return "Issue Subtype: Not Applicable (Z)"
  end

  return "Issue Subtype: Unknown("..value..")"
end

-- Dissect: Issue Subtype
nasdaq_nsmequities_level2_itch_v2_0_dissect.issue_subtype = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_subtype
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.issue_subtype(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_classification = 1

-- Display: Issue Classification
nasdaq_nsmequities_level2_itch_v2_0_display.issue_classification = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lots_only = 1

-- Display: Round Lots Only
nasdaq_nsmequities_level2_itch_v2_0_display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_level2_itch_v2_0_dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lot_size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_level2_itch_v2_0_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_level2_itch_v2_0_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
nasdaq_nsmequities_level2_itch_v2_0_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_level2_itch_v2_0_display.financial_status_indicator = function(value)
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
    return "Financial Status Indicator: In Compliance (<whitespace>)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
nasdaq_nsmequities_level2_itch_v2_0_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_nsmequities_level2_itch_v2_0_size_of.market_category = 1

-- Display: Market Category
nasdaq_nsmequities_level2_itch_v2_0_display.market_category = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.stock

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.market_category

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.financial_status_indicator

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lot_size

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.round_lots_only

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_classification

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.issue_subtype

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.authenticity

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.short_sale_threshold_indicator

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_flag

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.luld_reference_price_tier

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_flag

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.etp_leverage_factor

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_nsmequities_level2_itch_v2_0_display.stock_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_level2_itch_v2_0_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_nsmequities_level2_itch_v2_0_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_nsmequities_level2_itch_v2_0_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_nsmequities_level2_itch_v2_0_dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_nsmequities_level2_itch_v2_0_dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String Enum with 16 values
  index, issue_classification = nasdaq_nsmequities_level2_itch_v2_0_dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Subtype: 2 Byte Ascii String Enum with 58 values
  index, issue_subtype = nasdaq_nsmequities_level2_itch_v2_0_dissect.issue_subtype(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_nsmequities_level2_itch_v2_0_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_nsmequities_level2_itch_v2_0_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_nsmequities_level2_itch_v2_0_dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_nsmequities_level2_itch_v2_0_dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_nsmequities_level2_itch_v2_0_dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_nsmequities_level2_itch_v2_0_dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_directory_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.stock_directory_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.stock_directory_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
nasdaq_nsmequities_level2_itch_v2_0_size_of.event_code = 1

-- Display: Event Code
nasdaq_nsmequities_level2_itch_v2_0_display.event_code = function(value)
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
nasdaq_nsmequities_level2_itch_v2_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_nsmequities_level2_itch_v2_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.timestamp

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_nsmequities_level2_itch_v2_0_display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_level2_itch_v2_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_level2_itch_v2_0_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 6 values
  index, event_code = nasdaq_nsmequities_level2_itch_v2_0_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.system_event_message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.system_event_message, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
nasdaq_nsmequities_level2_itch_v2_0_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.stock_trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Participant Position Summary Message
  if message_type == "P" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.participant_position_summary_message(buffer, offset)
  end
  -- Size of Operational Halt Message
  if message_type == "h" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.operational_halt_message(buffer, offset)
  end
  -- Size of Market Participant Bidask Update Message
  if message_type == "U" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.market_participant_bidask_update_message(buffer, offset)
  end
  -- Size of Retail Price Interest Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.retail_price_interest_indicator_message(buffer, offset)
  end
  -- Size of Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_decline_level_message(buffer, offset)
  end
  -- Size of Mwcb Status Message
  if message_type == "W" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.mwcb_status_message(buffer, offset)
  end
  -- Size of Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_level2_itch_v2_0_size_of.ipo_quoting_period_update_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_level2_itch_v2_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_level2_itch_v2_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.stock_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant Position Summary Message
  if message_type == "P" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.participant_position_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.operational_halt_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Participant Bidask Update Message
  if message_type == "U" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.market_participant_bidask_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Interest Indicator Message
  if message_type == "N" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.retail_price_interest_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_decline_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Status Message
  if message_type == "W" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.mwcb_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.ipo_quoting_period_update_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_level2_itch_v2_0_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nsmequities_level2_itch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_level2_itch_v2_0_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.payload, range, display)

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_nsmequities_level2_itch_v2_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_nsmequities_level2_itch_v2_0_display.message_type = function(value)
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
    return "Message Type: Reg Sho Restriction Message (Y)"
  end
  if value == "P" then
    return "Message Type: Participant Position Summary Message (P)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end
  if value == "U" then
    return "Message Type: Market Participant Bidask Update Message (U)"
  end
  if value == "N" then
    return "Message Type: Retail Price Interest Indicator Message (N)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_level2_itch_v2_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_nsmequities_level2_itch_v2_0_size_of.length = 2

-- Display: Length
nasdaq_nsmequities_level2_itch_v2_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nsmequities_level2_itch_v2_0_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_nsmequities_level2_itch_v2_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.length

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_nsmequities_level2_itch_v2_0_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_level2_itch_v2_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nsmequities_level2_itch_v2_0_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 11 values
  index, message_type = nasdaq_nsmequities_level2_itch_v2_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_level2_itch_v2_0_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.message_header(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.message_header, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
nasdaq_nsmequities_level2_itch_v2_0_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_level2_itch_v2_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = nasdaq_nsmequities_level2_itch_v2_0_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_level2_itch_v2_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.message, range, display)
  end

  nasdaq_nsmequities_level2_itch_v2_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_nsmequities_level2_itch_v2_0_size_of.count = 2

-- Display: Count
nasdaq_nsmequities_level2_itch_v2_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_nsmequities_level2_itch_v2_0_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_nsmequities_level2_itch_v2_0_size_of.sequence = 8

-- Display: Sequence
nasdaq_nsmequities_level2_itch_v2_0_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nsmequities_level2_itch_v2_0_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_level2_itch_v2_0_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_nsmequities_level2_itch_v2_0_size_of.session = 10

-- Display: Session
nasdaq_nsmequities_level2_itch_v2_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_level2_itch_v2_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.session
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

  local display = nasdaq_nsmequities_level2_itch_v2_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_nsmequities_level2_itch_v2_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.session

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.sequence

  index = index + nasdaq_nsmequities_level2_itch_v2_0_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_nsmequities_level2_itch_v2_0_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_level2_itch_v2_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_level2_itch_v2_0_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nsmequities_level2_itch_v2_0_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_nsmequities_level2_itch_v2_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_level2_itch_v2_0_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = nasdaq_nsmequities_level2_itch_v2_0_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nasdaq_nsmequities_level2_itch_v2_0_display.packet_header(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_level2_itch_v2_0.fields.packet_header, range, display)
  end

  return nasdaq_nsmequities_level2_itch_v2_0_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nasdaq_nsmequities_level2_itch_v2_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_level2_itch_v2_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_nsmequities_level2_itch_v2_0_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_nsmequities_level2_itch_v2_0.init()
end

-- Dissector for Nasdaq NsmEquities Level2 Itch 2.0
function nasdaq_nsmequities_level2_itch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_nsmequities_level2_itch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_nsmequities_level2_itch_v2_0, buffer(), nasdaq_nsmequities_level2_itch_v2_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_level2_itch_v2_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_nsmequities_level2_itch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_nsmequities_level2_itch_v2_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Level2 Itch 2.0
local function nasdaq_nsmequities_level2_itch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_nsmequities_level2_itch_v2_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_nsmequities_level2_itch_v2_0
  nasdaq_nsmequities_level2_itch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Level2 Itch 2.0
nasdaq_nsmequities_level2_itch_v2_0:register_heuristic("udp", nasdaq_nsmequities_level2_itch_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 2.0
--   Date: Thursday, May 3, 2018
--   Specification: Level2Specification.pdf
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
