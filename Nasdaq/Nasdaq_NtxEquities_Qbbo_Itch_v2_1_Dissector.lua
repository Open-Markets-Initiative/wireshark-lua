-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NtxEquities Qbbo Itch 2.1 Protocol
local omi_nasdaq_ntxequities_qbbo_itch_v2_1 = Proto("Nasdaq.NtxEquities.Qbbo.Itch.v2.1.Lua", "Nasdaq NtxEquities Qbbo Itch 2.1")

-- Protocol table
local nasdaq_ntxequities_qbbo_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NtxEquities Qbbo Itch 2.1 Fields
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.ntxequities.qbbo.itch.v2.1.authenticity", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_bid_price = ProtoField.new("Best Bid Price", "nasdaq.ntxequities.qbbo.itch.v2.1.bestbidprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_bid_size = ProtoField.new("Best Bid Size", "nasdaq.ntxequities.qbbo.itch.v2.1.bestbidsize", ftypes.UINT32)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_offer_price = ProtoField.new("Best Offer Price", "nasdaq.ntxequities.qbbo.itch.v2.1.bestofferprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_offer_size = ProtoField.new("Best Offer Size", "nasdaq.ntxequities.qbbo.itch.v2.1.bestoffersize", ftypes.UINT32)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.breached_level = ProtoField.new("Breached Level", "nasdaq.ntxequities.qbbo.itch.v2.1.breachedlevel", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.ntxequities.qbbo.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.ntxequities.qbbo.itch.v2.1.etpflag", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.ntxequities.qbbo.itch.v2.1.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.ntxequities.qbbo.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.ntxequities.qbbo.itch.v2.1.financialstatusindicator", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.interest_flag = ProtoField.new("Interest Flag", "nasdaq.ntxequities.qbbo.itch.v2.1.interestflag", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.ntxequities.qbbo.itch.v2.1.inverseindicator", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.ntxequities.qbbo.itch.v2.1.ipoflag", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.ntxequities.qbbo.itch.v2.1.ipoprice", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.ntxequities.qbbo.itch.v2.1.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.ntxequities.qbbo.itch.v2.1.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.ntxequities.qbbo.itch.v2.1.issueclassification", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.issue_subtype = ProtoField.new("Issue Subtype", "nasdaq.ntxequities.qbbo.itch.v2.1.issuesubtype", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_1 = ProtoField.new("Level 1", "nasdaq.ntxequities.qbbo.itch.v2.1.level1", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_2 = ProtoField.new("Level 2", "nasdaq.ntxequities.qbbo.itch.v2.1.level2", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_3 = ProtoField.new("Level 3", "nasdaq.ntxequities.qbbo.itch.v2.1.level3", ftypes.DOUBLE)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.ntxequities.qbbo.itch.v2.1.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.market_category = ProtoField.new("Market Category", "nasdaq.ntxequities.qbbo.itch.v2.1.marketcategory", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.market_code = ProtoField.new("Market Code", "nasdaq.ntxequities.qbbo.itch.v2.1.marketcode", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.ntxequities.qbbo.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.ntxequities.qbbo.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.ntxequities.qbbo.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.ntxequities.qbbo.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.ntxequities.qbbo.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.operational_halt_action = ProtoField.new("Operational Halt Action", "nasdaq.ntxequities.qbbo.itch.v2.1.operationalhaltaction", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.ntxequities.qbbo.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.ntxequities.qbbo.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reason = ProtoField.new("Reason", "nasdaq.ntxequities.qbbo.itch.v2.1.reason", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.ntxequities.qbbo.itch.v2.1.regshoaction", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.ntxequities.qbbo.itch.v2.1.roundlotsize", ftypes.UINT32)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.ntxequities.qbbo.itch.v2.1.roundlotsonly", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.security_class = ProtoField.new("Security Class", "nasdaq.ntxequities.qbbo.itch.v2.1.securityclass", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.ntxequities.qbbo.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.ntxequities.qbbo.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.ntxequities.qbbo.itch.v2.1.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_alpha_8 = ProtoField.new("Stock Alpha 8", "nasdaq.ntxequities.qbbo.itch.v2.1.stockalpha8", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_alphanumeric_8 = ProtoField.new("Stock Alphanumeric 8", "nasdaq.ntxequities.qbbo.itch.v2.1.stockalphanumeric8", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.time_stamp = ProtoField.new("Time Stamp", "nasdaq.ntxequities.qbbo.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.timestamp_integer_6 = ProtoField.new("Timestamp Integer 6", "nasdaq.ntxequities.qbbo.itch.v2.1.timestampinteger6", ftypes.UINT64)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.timestamp_timestamp_6 = ProtoField.new("Timestamp Timestamp 6", "nasdaq.ntxequities.qbbo.itch.v2.1.timestamptimestamp6", ftypes.UINT64)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.tracking = ProtoField.new("Tracking", "nasdaq.ntxequities.qbbo.itch.v2.1.tracking", ftypes.UINT16)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.ntxequities.qbbo.itch.v2.1.trackingnumber", ftypes.UINT16)

-- Nasdaq NtxEquities Itch Qbbo 2.1 Application Messages
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.bbo_quotation_message = ProtoField.new("Bbo Quotation Message", "nasdaq.ntxequities.qbbo.itch.v2.1.bboquotationmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.ntxequities.qbbo.itch.v2.1.ipoquotingperiodupdatemessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.mwcb_breach_message = ProtoField.new("Mwcb Breach Message", "nasdaq.ntxequities.qbbo.itch.v2.1.mwcbbreachmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.mwcb_decline_level_message = ProtoField.new("Mwcb Decline Level Message", "nasdaq.ntxequities.qbbo.itch.v2.1.mwcbdeclinelevelmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.operational_halt_message = ProtoField.new("Operational Halt Message", "nasdaq.ntxequities.qbbo.itch.v2.1.operationalhaltmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.price_improvement_message = ProtoField.new("Price Improvement Message", "nasdaq.ntxequities.qbbo.itch.v2.1.priceimprovementmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.ntxequities.qbbo.itch.v2.1.regshorestrictionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.ntxequities.qbbo.itch.v2.1.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.ntxequities.qbbo.itch.v2.1.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.ntxequities.qbbo.itch.v2.1.systemeventmessage", ftypes.STRING)

-- Nasdaq NtxEquities Qbbo Itch 2.1 generated fields
omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.ntxequities.qbbo.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NtxEquities Qbbo Itch 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq NtxEquities Qbbo Itch 2.1 Show Options
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Time Stamp Display Preferences
nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local time_stamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.time_stamp_format = Pref.enum("Time Stamp Format", 2, "Time Stamp display format", time_stamp_format_enum, false)
omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.show_message_index
  end

  -- Check Time Stamp preferences
  if nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp_format ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.time_stamp_format then
    nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp_format = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.time_stamp_format
  end
  if nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours ~= omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.utc_offset_hours then
    nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours = omi_nasdaq_ntxequities_qbbo_itch_v2_1.prefs.utc_offset_hours
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
-- Nasdaq NtxEquities Qbbo Itch 2.1 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_ntxequities_qbbo_itch_v2_1.authenticity = {}

-- Size: Authenticity
nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.size = 1

-- Display: Authenticity
nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price = {}

-- Size: Best Bid Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.size = 4

-- Display: Best Bid Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Translate: Best Bid Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Bid Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size = {}

-- Size: Best Bid Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.size = 4

-- Display: Best Bid Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price = {}

-- Size: Best Offer Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.size = 4

-- Display: Best Offer Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Translate: Best Offer Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Offer Price
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size = {}

-- Size: Best Offer Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.size = 4

-- Display: Best Offer Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Breached Level
nasdaq_ntxequities_qbbo_itch_v2_1.breached_level = {}

-- Size: Breached Level
nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.size = 1

-- Display: Breached Level
nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.display = function(value)
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
nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.breached_level, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted Paused (H)"
  end
  if value == "Q" then
    return "Current Trading State: Quotation Only (Q)"
  end
  if value == "P" then
    return "Current Trading State: Paused (P)"
  end
  if value == "T" then
    return "Current Trading State: Trading (T)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag = {}

-- Size: Etp Flag
nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.display = function(value)
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
nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_ntxequities_qbbo_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_ntxequities_qbbo_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_ntxequities_qbbo_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Transmissions (O)"
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
    return "Event Code: End Of Transmissions (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_ntxequities_qbbo_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.display = function(value)
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
    return "Financial Status Indicator: Creations Andor Redemptions Suspended (C)"
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
nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Interest Flag
nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag = {}

-- Size: Interest Flag
nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.size = 1

-- Display: Interest Flag
nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.display = function(value)
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
    return "Interest Flag: No Pi Available (N)"
  end

  return "Interest Flag: Unknown("..value..")"
end

-- Dissect: Interest Flag
nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.interest_flag, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.display = function(value)
  if value == "Y" then
    return "Ipo Flag: Ipo Security (Y)"
  end
  if value == "N" then
    return "Ipo Flag: Not Ipo Security (N)"
  end
  if value == " " then
    return "Ipo Flag: Not Available (<whitespace>)"
  end

  return "Ipo Flag: Unknown("..value..")"
end

-- Dissect: Ipo Flag
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price = {}

-- Size: Ipo Price
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification = {}

-- Size: Issue Classification
nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.display = function(value)
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
nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Subtype
nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype = {}

-- Size: Issue Subtype
nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.size = 2

-- Display: Issue Subtype
nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.display = function(value)
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
    return "Issue Subtype: Commodity Linked Securities (CL)"
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
    return "Issue Subtype: Commodity Currency Linked Securities (CU)"
  end
  if value == "CW" then
    return "Issue Subtype: Currency Warrants (CW)"
  end
  if value == "D" then
    return "Issue Subtype: Global Depositary Shares (D)"
  end
  if value == "E" then
    return "Issue Subtype: Etf Portfolio Depositary Receipt (E)"
  end
  if value == "EG" then
    return "Issue Subtype: Equity Gold Shares (EG)"
  end
  if value == "EI" then
    return "Issue Subtype: Etn Equity Index Linked Securities (EI)"
  end
  if value == "EM" then
    return "Issue Subtype: Exchange Traded Managed Funds (EM)"
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
    return "Issue Subtype: Etn Fixed Income Linked Securities (FI)"
  end
  if value == "FL" then
    return "Issue Subtype: Etn Futures Linked Securities (FL)"
  end
  if value == "G" then
    return "Issue Subtype: Global Shares (G)"
  end
  if value == "I" then
    return "Issue Subtype: Etf Index Fund Shares (I)"
  end
  if value == "IR" then
    return "Issue Subtype: Interest Rate (IR)"
  end
  if value == "IW" then
    return "Issue Subtype: Index Warrant (IW)"
  end
  if value == "IX" then
    return "Issue Subtype: Index Linked Exchangeable Notes (IX)"
  end
  if value == "J" then
    return "Issue Subtype: Corporate Backed Trust Security (J)"
  end
  if value == "L" then
    return "Issue Subtype: Contingent Litigation Right (L)"
  end
  if value == "LL" then
    return "Issue Subtype: Limited Liability Company (LL)"
  end
  if value == "M" then
    return "Issue Subtype: Equity Based Derivative (M)"
  end
  if value == "MF" then
    return "Issue Subtype: Managed Fund Shares (MF)"
  end
  if value == "ML" then
    return "Issue Subtype: Etn Multi Factor Index Linked Securities (ML)"
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
    return "Issue Subtype: Commodity Redeemable Commodity Linked Securities (RC)"
  end
  if value == "RF" then
    return "Issue Subtype: Etn Redeemable Futures Linked Securities (RF)"
  end
  if value == "RT" then
    return "Issue Subtype: Reit (RT)"
  end
  if value == "RU" then
    return "Issue Subtype: Commodity Redeemable Currency Linked Securities (RU)"
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
nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.issue_subtype, range, value, display)

  return offset + length, value
end

-- Level 1
nasdaq_ntxequities_qbbo_itch_v2_1.level_1 = {}

-- Size: Level 1
nasdaq_ntxequities_qbbo_itch_v2_1.level_1.size = 8

-- Display: Level 1
nasdaq_ntxequities_qbbo_itch_v2_1.level_1.display = function(value)
  return "Level 1: "..value
end

-- Translate: Level 1
nasdaq_ntxequities_qbbo_itch_v2_1.level_1.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 1
nasdaq_ntxequities_qbbo_itch_v2_1.level_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.level_1.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.level_1.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_1, range, value, display)

  return offset + length, value
end

-- Level 2
nasdaq_ntxequities_qbbo_itch_v2_1.level_2 = {}

-- Size: Level 2
nasdaq_ntxequities_qbbo_itch_v2_1.level_2.size = 8

-- Display: Level 2
nasdaq_ntxequities_qbbo_itch_v2_1.level_2.display = function(value)
  return "Level 2: "..value
end

-- Translate: Level 2
nasdaq_ntxequities_qbbo_itch_v2_1.level_2.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 2
nasdaq_ntxequities_qbbo_itch_v2_1.level_2.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.level_2.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.level_2.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_2, range, value, display)

  return offset + length, value
end

-- Level 3
nasdaq_ntxequities_qbbo_itch_v2_1.level_3 = {}

-- Size: Level 3
nasdaq_ntxequities_qbbo_itch_v2_1.level_3.size = 8

-- Display: Level 3
nasdaq_ntxequities_qbbo_itch_v2_1.level_3.display = function(value)
  return "Level 3: "..value
end

-- Translate: Level 3
nasdaq_ntxequities_qbbo_itch_v2_1.level_3.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Level 3
nasdaq_ntxequities_qbbo_itch_v2_1.level_3.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.level_3.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = nasdaq_ntxequities_qbbo_itch_v2_1.level_3.translate(raw)
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.level_3, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 Nms Stocks And Select Et Ps (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 Nms Stocks (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Available (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_ntxequities_qbbo_itch_v2_1.market_category = {}

-- Size: Market Category
nasdaq_ntxequities_qbbo_itch_v2_1.market_category.size = 1

-- Display: Market Category
nasdaq_ntxequities_qbbo_itch_v2_1.market_category.display = function(value)
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
  if value == "Z" then
    return "Market Category: Bats Bzx Exchange (Z)"
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
nasdaq_ntxequities_qbbo_itch_v2_1.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.market_category, range, value, display)

  return offset + length, value
end

-- Market Code
nasdaq_ntxequities_qbbo_itch_v2_1.market_code = {}

-- Size: Market Code
nasdaq_ntxequities_qbbo_itch_v2_1.market_code.size = 1

-- Display: Market Code
nasdaq_ntxequities_qbbo_itch_v2_1.market_code.display = function(value)
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
nasdaq_ntxequities_qbbo_itch_v2_1.market_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.market_code, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_ntxequities_qbbo_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_ntxequities_qbbo_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_ntxequities_qbbo_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_ntxequities_qbbo_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_ntxequities_qbbo_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_ntxequities_qbbo_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_ntxequities_qbbo_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_ntxequities_qbbo_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_ntxequities_qbbo_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_ntxequities_qbbo_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_ntxequities_qbbo_itch_v2_1.message_type.display = function(value)
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
  if value == "V" then
    return "Message Type: Mwcb Decline Level Message (V)"
  end
  if value == "W" then
    return "Message Type: Mwcb Breach Message (W)"
  end
  if value == "h" then
    return "Message Type: Operational Halt Message (h)"
  end
  if value == "Q" then
    return "Message Type: Bbo Quotation Message (Q)"
  end
  if value == "N" then
    return "Message Type: Price Improvement Message (N)"
  end
  if value == "K" then
    return "Message Type: Ipo Quoting Period Update Message (K)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_ntxequities_qbbo_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Operational Halt Action
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action = {}

-- Size: Operational Halt Action
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.size = 1

-- Display: Operational Halt Action
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.display = function(value)
  if value == "H" then
    return "Operational Halt Action: Halted (H)"
  end
  if value == "T" then
    return "Operational Halt Action: Resumed (T)"
  end

  return "Operational Halt Action: Unknown("..value..")"
end

-- Dissect: Operational Halt Action
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.operational_halt_action, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_ntxequities_qbbo_itch_v2_1.reason = {}

-- Size: Reason
nasdaq_ntxequities_qbbo_itch_v2_1.reason.size = 4

-- Display: Reason
nasdaq_ntxequities_qbbo_itch_v2_1.reason.display = function(value)
  if value == "T1" then
    return "Reason: Halt News Pending (T1)"
  end
  if value == "T2" then
    return "Reason: Halt News Disseminated (T2)"
  end
  if value == "T5" then
    return "Reason: Single Security Trading Pause In Affect (T5)"
  end
  if value == "T6" then
    return "Reason: Regulatory Halt (T6)"
  end
  if value == "T8" then
    return "Reason: Halt Etf (T8)"
  end
  if value == "T12" then
    return "Reason: Trading Halted (T12)"
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
    return "Reason: Operations Halt (O1)"
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
  if value == "T3" then
    return "Reason: News And Resumption Times (T3)"
  end
  if value == "T7" then
    return "Reason: Single Security Trading Pause Quotation Only Period (T7)"
  end
  if value == "R4" then
    return "Reason: Qualifications Issues Reviewed Resolved (R4)"
  end
  if value == "R9" then
    return "Reason: Filing Requirements Satisfied Resolved (R9)"
  end
  if value == "C3" then
    return "Reason: Issuer News Not Forthcoming (C3)"
  end
  if value == "C4" then
    return "Reason: Qualifications Halt Ended (C4)"
  end
  if value == "C9" then
    return "Reason: Qualifications Halt Concluded (C9)"
  end
  if value == "C11" then
    return "Reason: Trade Halt Concluded By Other Regulatory Auth (C11)"
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
    return "Reason: Ipo Security Positioning Window Extension (IPOE)"
  end
  if value == " " then
    return "Reason: Reason Not Available (<whitespace>)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nasdaq_ntxequities_qbbo_itch_v2_1.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Restriction In Effect (1)"
  end
  if value == "2" then
    return "Reg Sho Action: Restriction Remains (2)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Security Class
nasdaq_ntxequities_qbbo_itch_v2_1.security_class = {}

-- Size: Security Class
nasdaq_ntxequities_qbbo_itch_v2_1.security_class.size = 1

-- Display: Security Class
nasdaq_ntxequities_qbbo_itch_v2_1.security_class.display = function(value)
  if value == "Q" then
    return "Security Class: Nasdaq Listed Issue (Q)"
  end
  if value == "N" then
    return "Security Class: Nyse (N)"
  end
  if value == "A" then
    return "Security Class: Nyse American (A)"
  end
  if value == "P" then
    return "Security Class: Nyse Arca (P)"
  end
  if value == "Z" then
    return "Security Class: Bats (Z)"
  end
  if value == "V" then
    return "Security Class: Iexg (V)"
  end

  return "Security Class: Unknown("..value..")"
end

-- Dissect: Security Class
nasdaq_ntxequities_qbbo_itch_v2_1.security_class.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.security_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.security_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.security_class, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_ntxequities_qbbo_itch_v2_1.session = {}

-- Size: Session
nasdaq_ntxequities_qbbo_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_ntxequities_qbbo_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_ntxequities_qbbo_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.session.size
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

  local display = nasdaq_ntxequities_qbbo_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.display = function(value)
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
nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock Alpha 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8 = {}

-- Size: Stock Alpha 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.size = 8

-- Display: Stock Alpha 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.display = function(value)
  return "Stock Alpha 8: "..value
end

-- Dissect: Stock Alpha 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_alpha_8, range, value, display)

  return offset + length, value
end

-- Stock Alphanumeric 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8 = {}

-- Size: Stock Alphanumeric 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size = 8

-- Display: Stock Alphanumeric 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.display = function(value)
  return "Stock Alphanumeric 8: "..value
end

-- Dissect: Stock Alphanumeric 8
nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_alphanumeric_8, range, value, display)

  return offset + length, value
end

-- Time Stamp
nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp = {}

-- Size: Time Stamp
nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size = 6

-- Display: Time Stamp
nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp_format == 0 then
    return "Time Stamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Time Stamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Time Stamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Time Stamp
nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Timestamp Integer 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6 = {}

-- Size: Timestamp Integer 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.size = 6

-- Display: Timestamp Integer 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6_format == 0 then
    return "Timestamp Integer 6: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp Integer 6: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp Integer 6: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp Integer 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.timestamp_integer_6, range, value, display)

  return offset + length, value
end

-- Timestamp Timestamp 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6 = {}

-- Size: Timestamp Timestamp 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size = 6

-- Display: Timestamp Timestamp 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6_format == 0 then
    return "Timestamp Timestamp 6: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_ntxequities_qbbo_itch_v2_1.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp Timestamp 6: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp Timestamp 6: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp Timestamp 6
nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.timestamp_timestamp_6, range, value, display)

  return offset + length, value
end

-- Tracking
nasdaq_ntxequities_qbbo_itch_v2_1.tracking = {}

-- Size: Tracking
nasdaq_ntxequities_qbbo_itch_v2_1.tracking.size = 2

-- Display: Tracking
nasdaq_ntxequities_qbbo_itch_v2_1.tracking.display = function(value)
  return "Tracking: "..value
end

-- Dissect: Tracking
nasdaq_ntxequities_qbbo_itch_v2_1.tracking.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.tracking.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.tracking.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.tracking, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NtxEquities Qbbo Itch 2.1
-----------------------------------------------------------------------

-- Ipo Quoting Period Update Message
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message = {}

-- Size: Ipo Quoting Period Update Message
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.size

-- Display: Ipo Quoting Period Update Message
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking: Integer
  index, tracking = nasdaq_ntxequities_qbbo_itch_v2_1.tracking.dissect(buffer, index, packet, parent)

  -- Time Stamp: Timestamp
  index, time_stamp = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: Integer
  index, ipo_quotation_release_time = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: Alphanumeric
  index, ipo_quotation_release_qualifier = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: Price (4)
  index, ipo_price = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Improvement Message
nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message = {}

-- Size: Price Improvement Message
nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.size

-- Display: Price Improvement Message
nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Improvement Message
nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking: Integer
  index, tracking = nasdaq_ntxequities_qbbo_itch_v2_1.tracking.dissect(buffer, index, packet, parent)

  -- Time Stamp: Timestamp
  index, time_stamp = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Interest Flag: Alphanumeric
  index, interest_flag = nasdaq_ntxequities_qbbo_itch_v2_1.interest_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Improvement Message
nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.price_improvement_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Bbo Quotation Message
nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message = {}

-- Size: Bbo Quotation Message
nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.security_class.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.size

-- Display: Bbo Quotation Message
nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bbo Quotation Message
nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Time Stamp: Timestamp
  index, time_stamp = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_qbbo_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price (4)
  index, best_bid_price = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = nasdaq_ntxequities_qbbo_itch_v2_1.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Price: Price (4)
  index, best_offer_price = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = nasdaq_ntxequities_qbbo_itch_v2_1.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bbo Quotation Message
nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.bbo_quotation_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Message
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message = {}

-- Size: Operational Halt Message
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.market_code.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.size

-- Display: Operational Halt Message
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Message
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp Integer 6: Integer
  index, timestamp_integer_6 = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_integer_6.dissect(buffer, index, packet, parent)

  -- Stock Alpha 8: Alpha
  index, stock_alpha_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.dissect(buffer, index, packet, parent)

  -- Market Code: Alpha
  index, market_code = nasdaq_ntxequities_qbbo_itch_v2_1.market_code.dissect(buffer, index, packet, parent)

  -- Operational Halt Action: Alpha
  index, operational_halt_action = nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Message
nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.operational_halt_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Breach Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message = {}

-- Size: Mwcb Breach Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.size

-- Display: Mwcb Breach Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Breach Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp Timestamp 6: Timestamp
  index, timestamp_timestamp_6 = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.dissect(buffer, index, packet, parent)

  -- Breached Level: Alphanumeric
  index, breached_level = nasdaq_ntxequities_qbbo_itch_v2_1.breached_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Breach Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.mwcb_breach_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.fields(buffer, offset, packet, parent)
  end
end

-- Mwcb Decline Level Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message = {}

-- Size: Mwcb Decline Level Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.level_1.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.level_2.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.level_3.size

-- Display: Mwcb Decline Level Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mwcb Decline Level Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp Timestamp 6: Timestamp
  index, timestamp_timestamp_6 = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.dissect(buffer, index, packet, parent)

  -- Level 1: Price (8)
  index, level_1 = nasdaq_ntxequities_qbbo_itch_v2_1.level_1.dissect(buffer, index, packet, parent)

  -- Level 2: Price (8)
  index, level_2 = nasdaq_ntxequities_qbbo_itch_v2_1.level_2.dissect(buffer, index, packet, parent)

  -- Level 3: Price (8)
  index, level_3 = nasdaq_ntxequities_qbbo_itch_v2_1.level_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mwcb Decline Level Message
nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.mwcb_decline_level_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp Timestamp 6: Timestamp
  index, timestamp_timestamp_6 = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.security_class.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.reason.size

-- Display: Stock Trading Action Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Time Stamp: Timestamp
  index, time_stamp = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Stock Alphanumeric 8: Alphanumeric
  index, stock_alphanumeric_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alphanumeric_8.dissect(buffer, index, packet, parent)

  -- Security Class: Alphanumeric
  index, security_class = nasdaq_ntxequities_qbbo_itch_v2_1.security_class.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alphanumeric
  index, current_trading_state = nasdaq_ntxequities_qbbo_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = nasdaq_ntxequities_qbbo_itch_v2_1.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.market_category.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp Timestamp 6: Timestamp
  index, timestamp_timestamp_6 = nasdaq_ntxequities_qbbo_itch_v2_1.timestamp_timestamp_6.dissect(buffer, index, packet, parent)

  -- Stock Alpha 8: Alpha
  index, stock_alpha_8 = nasdaq_ntxequities_qbbo_itch_v2_1.stock_alpha_8.dissect(buffer, index, packet, parent)

  -- Market Category: Alpha
  index, market_category = nasdaq_ntxequities_qbbo_itch_v2_1.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Alpha
  index, financial_status_indicator = nasdaq_ntxequities_qbbo_itch_v2_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = nasdaq_ntxequities_qbbo_itch_v2_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: Alpha
  index, round_lots_only = nasdaq_ntxequities_qbbo_itch_v2_1.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: Alpha
  index, issue_classification = nasdaq_ntxequities_qbbo_itch_v2_1.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Subtype: Alpha
  index, issue_subtype = nasdaq_ntxequities_qbbo_itch_v2_1.issue_subtype.dissect(buffer, index, packet, parent)

  -- Authenticity: Alpha
  index, authenticity = nasdaq_ntxequities_qbbo_itch_v2_1.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: Alpha
  index, short_sale_threshold_indicator = nasdaq_ntxequities_qbbo_itch_v2_1.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: Alpha
  index, ipo_flag = nasdaq_ntxequities_qbbo_itch_v2_1.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: Alpha
  index, luld_reference_price_tier = nasdaq_ntxequities_qbbo_itch_v2_1.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: Alpha
  index, etp_flag = nasdaq_ntxequities_qbbo_itch_v2_1.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: Integer
  index, etp_leverage_factor = nasdaq_ntxequities_qbbo_itch_v2_1.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: Alpha
  index, inverse_indicator = nasdaq_ntxequities_qbbo_itch_v2_1.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_ntxequities_qbbo_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Time Stamp: Timestamp
  index, time_stamp = nasdaq_ntxequities_qbbo_itch_v2_1.time_stamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = nasdaq_ntxequities_qbbo_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_ntxequities_qbbo_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_ntxequities_qbbo_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Decline Level Message
  if message_type == "V" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_decline_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mwcb Breach Message
  if message_type == "W" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.mwcb_breach_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Message
  if message_type == "h" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.operational_halt_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bbo Quotation Message
  if message_type == "Q" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.bbo_quotation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Improvement Message
  if message_type == "N" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.price_improvement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_ntxequities_qbbo_itch_v2_1.ipo_quoting_period_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_ntxequities_qbbo_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_ntxequities_qbbo_itch_v2_1.message_header.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.message_length.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_ntxequities_qbbo_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_ntxequities_qbbo_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_ntxequities_qbbo_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 10 values
  index, message_type = nasdaq_ntxequities_qbbo_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_ntxequities_qbbo_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_ntxequities_qbbo_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_ntxequities_qbbo_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_ntxequities_qbbo_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_ntxequities_qbbo_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_ntxequities_qbbo_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = nasdaq_ntxequities_qbbo_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_ntxequities_qbbo_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_ntxequities_qbbo_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_ntxequities_qbbo_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_ntxequities_qbbo_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_ntxequities_qbbo_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_ntxequities_qbbo_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_ntxequities_qbbo_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_ntxequities_qbbo_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.size =
  nasdaq_ntxequities_qbbo_itch_v2_1.session.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.size + 
  nasdaq_ntxequities_qbbo_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_ntxequities_qbbo_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_ntxequities_qbbo_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_ntxequities_qbbo_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_ntxequities_qbbo_itch_v2_1.packet = {}

-- Dissect Packet
nasdaq_ntxequities_qbbo_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_ntxequities_qbbo_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_ntxequities_qbbo_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_ntxequities_qbbo_itch_v2_1.init()
end

-- Dissector for Nasdaq NtxEquities Qbbo Itch 2.1
function omi_nasdaq_ntxequities_qbbo_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_ntxequities_qbbo_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_ntxequities_qbbo_itch_v2_1, buffer(), omi_nasdaq_ntxequities_qbbo_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_ntxequities_qbbo_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_ntxequities_qbbo_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_ntxequities_qbbo_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NtxEquities Qbbo Itch 2.1
local function omi_nasdaq_ntxequities_qbbo_itch_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_ntxequities_qbbo_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_ntxequities_qbbo_itch_v2_1
  omi_nasdaq_ntxequities_qbbo_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NtxEquities Qbbo Itch 2.1
omi_nasdaq_ntxequities_qbbo_itch_v2_1:register_heuristic("udp", omi_nasdaq_ntxequities_qbbo_itch_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, August 2, 2024
--   Specification: Nasdaq.NtxEquities.Bbo.Itch.v2.1.20240802.pdf
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
