-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Noi Itch 3.0.2017 Protocol
local omi_nasdaq_nsmequities_noi_itch_v3_0_2017 = Proto("Nasdaq.NsmEquities.Noi.Itch.v3.0.2017.Lua", "Nasdaq NsmEquities Noi Itch 3.0.2017")

-- Protocol table
local nasdaq_nsmequities_noi_itch_v3_0_2017 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Noi Itch 3.0.2017 Fields
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.noi.itch.v3.0.2017.authenticity", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.noi.itch.v3.0.2017.crossprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.noi.itch.v3.0.2017.crosstype", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.noi.itch.v3.0.2017.currentreferenceprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.noi.itch.v3.0.2017.currenttradingstate", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.noi.itch.v3.0.2017.etpflag", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.noi.itch.v3.0.2017.etpleveragefactor", ftypes.UINT32)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.noi.itch.v3.0.2017.eventcode", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.noi.itch.v3.0.2017.farprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.noi.itch.v3.0.2017.financialstatusindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.noi.itch.v3.0.2017.imbalancedirection", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.noi.itch.v3.0.2017.imbalanceshares", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.noi.itch.v3.0.2017.inverseindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.noi.itch.v3.0.2017.ipoflag", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.noi.itch.v3.0.2017.ipoprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.noi.itch.v3.0.2017.ipoquotationreleasequalifier", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.noi.itch.v3.0.2017.ipoquotationreleasetime", ftypes.UINT32)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.noi.itch.v3.0.2017.issueclassification", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.noi.itch.v3.0.2017.issuesubtype", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.noi.itch.v3.0.2017.luldreferencepricetier", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.noi.itch.v3.0.2017.marketcategory", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.noi.itch.v3.0.2017.matchnumber", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.message", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_count = ProtoField.new("Message Count", "nasdaq.nsmequities.noi.itch.v3.0.2017.messagecount", ftypes.UINT16)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.noi.itch.v3.0.2017.messageheader", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_length = ProtoField.new("Message Length", "nasdaq.nsmequities.noi.itch.v3.0.2017.messagelength", ftypes.UINT16)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.noi.itch.v3.0.2017.messagetype", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.noi.itch.v3.0.2017.nearprice", ftypes.DOUBLE)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.noi.itch.v3.0.2017.packet", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.noi.itch.v3.0.2017.packetheader", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.noi.itch.v3.0.2017.pairedshares", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.noi.itch.v3.0.2017.pricevariationindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.noi.itch.v3.0.2017.reason", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.noi.itch.v3.0.2017.regshoaction", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.noi.itch.v3.0.2017.roundlotsize", ftypes.UINT32)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.noi.itch.v3.0.2017.roundlotsonly", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nsmequities.noi.itch.v3.0.2017.sequencenumber", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.noi.itch.v3.0.2017.session", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.noi.itch.v3.0.2017.shares", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.noi.itch.v3.0.2017.shortsalethresholdindicator", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.noi.itch.v3.0.2017.stock", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.noi.itch.v3.0.2017.timestamp", ftypes.UINT64)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.noi.itch.v3.0.2017.trackingnumber", ftypes.UINT16)

-- Nasdaq NsmEquities Itch Noi 3.0.2017 Application Messages
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.crosstrademessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.ipoquotingperiodupdatemessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.noiimessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.regshorestrictionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.stockdirectorymessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.stocktradingactionmessage", ftypes.STRING)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.noi.itch.v3.0.2017.systemeventmessage", ftypes.STRING)

-- Nasdaq NsmEquities Noi Itch 3.0.2017 generated fields
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_index = ProtoField.new("Message Index", "nasdaq.nsmequities.noi.itch.v3.0.2017.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NsmEquities Noi Itch 3.0.2017 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq NsmEquities Noi Itch 3.0.2017 Show Options
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Timestamp Display Preferences
nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp_format = 2  -- 0=Raw, 1=TimeOfDay, 2=FullDateTime
nasdaq_nsmequities_noi_itch_v3_0_2017.utc_offset_hours = 5 -- Hours behind UTC (EST = 5, EDT = 4, UTC = 0)

local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Timestamp display format", timestamp_format_enum, false)
omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC for midnight calculation (EST=5, EDT=4, UTC=0)")

-- Handle changed preferences
function omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message then
    show.message = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_header then
    show.message_header = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet then
    show.packet = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_index then
    show.message_index = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.show_message_index
  end

  -- Check Timestamp preferences
  if nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp_format ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.timestamp_format then
    nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp_format = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.timestamp_format
  end
  if nasdaq_nsmequities_noi_itch_v3_0_2017.utc_offset_hours ~= omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.utc_offset_hours then
    nasdaq_nsmequities_noi_itch_v3_0_2017.utc_offset_hours = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.prefs.utc_offset_hours
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
-- Nasdaq NsmEquities Noi Itch 3.0.2017 Fields
-----------------------------------------------------------------------

-- Authenticity
nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity = {}

-- Size: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.size = 1

-- Display: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.display = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Cross Price
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price = {}

-- Size: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.size = 4

-- Display: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.display = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.translate(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type = {}

-- Size: Cross Type
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.size = 1

-- Display: Cross Type
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.display = function(value)
  if value == "O" then
    return "Cross Type: Opening Cross (O)"
  end
  if value == "C" then
    return "Cross Type: Closing Cross (C)"
  end
  if value == "H" then
    return "Cross Type: Cross Halted Or Paused (H)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price = {}

-- Size: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.size = 4

-- Display: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.display = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.translate(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state = {}

-- Size: Current Trading State
nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.display = function(value)
  if value == "H" then
    return "Current Trading State: Halted (H)"
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
nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Etp Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag = {}

-- Size: Etp Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.size = 1

-- Display: Etp Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor = {}

-- Size: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.size = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.display = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nsmequities_noi_itch_v3_0_2017.event_code = {}

-- Size: Event Code
nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.size = 1

-- Display: Event Code
nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.display = function(value)
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
    return "Event Code: Clear Noii Opening Cross Data (X)"
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
nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.event_code, range, value, display)

  return offset + length, value
end

-- Far Price
nasdaq_nsmequities_noi_itch_v3_0_2017.far_price = {}

-- Size: Far Price
nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.size = 4

-- Display: Far Price
nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.display = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.translate(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.far_price, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator = {}

-- Size: Financial Status Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction = {}

-- Size: Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.size = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.display = function(value)
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

  return "Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares = {}

-- Size: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.size = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator = {}

-- Size: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.size = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.display = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Ipo Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag = {}

-- Size: Ipo Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.size = 1

-- Display: Ipo Flag
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price = {}

-- Size: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.size = 4

-- Display: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.display = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.translate(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier = {}

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.size = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.display = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time = {}

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.size = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.display = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification = {}

-- Size: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.size = 1

-- Display: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.display = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type = {}

-- Size: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.size = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.display = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier = {}

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.size = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.display = function(value)
  if value == "1" then
    return "Luld Reference Price Tier: Tier 1 (1)"
  end
  if value == "2" then
    return "Luld Reference Price Tier: Tier 2 (2)"
  end
  if value == " " then
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Market Category
nasdaq_nsmequities_noi_itch_v3_0_2017.market_category = {}

-- Size: Market Category
nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.size = 1

-- Display: Market Category
nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.market_category, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_nsmequities_noi_itch_v3_0_2017.match_number = {}

-- Size: Match Number
nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.size = 8

-- Display: Match Number
nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nsmequities_noi_itch_v3_0_2017.message_count = {}

-- Size: Message Count
nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.size = 2

-- Display: Message Count
nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nsmequities_noi_itch_v3_0_2017.message_length = {}

-- Size: Message Length
nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.size = 2

-- Display: Message Length
nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nsmequities_noi_itch_v3_0_2017.message_type = {}

-- Size: Message Type
nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.size = 1

-- Display: Message Type
nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.display = function(value)
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
  if value == "I" then
    return "Message Type: Noii Message (I)"
  end
  if value == "Q" then
    return "Message Type: Cross Trade Message (Q)"
  end
  if value == "K" then
    return "Message Type: Ipo Quoting Period Update Message (K)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_type, range, value, display)

  return offset + length, value
end

-- Near Price
nasdaq_nsmequities_noi_itch_v3_0_2017.near_price = {}

-- Size: Near Price
nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.size = 4

-- Display: Near Price
nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.display = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.translate(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.near_price, range, value, display)

  return offset + length, value
end

-- Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares = {}

-- Size: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.size = 8

-- Display: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator = {}

-- Size: Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.size = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.display = function(value)
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

  return "Price Variation Indicator: Unknown("..value..")"
end

-- Dissect: Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Reason
nasdaq_nsmequities_noi_itch_v3_0_2017.reason = {}

-- Size: Reason
nasdaq_nsmequities_noi_itch_v3_0_2017.reason.size = 4

-- Display: Reason
nasdaq_nsmequities_noi_itch_v3_0_2017.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_noi_itch_v3_0_2017.reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reason, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action = {}

-- Size: Reg Sho Action
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.size = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only = {}

-- Size: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.size = 1

-- Display: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.display = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number = {}

-- Size: Sequence Number
nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nsmequities_noi_itch_v3_0_2017.session = {}

-- Size: Session
nasdaq_nsmequities_noi_itch_v3_0_2017.session.size = 10

-- Display: Session
nasdaq_nsmequities_noi_itch_v3_0_2017.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_noi_itch_v3_0_2017.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.session.size
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

  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.shares = {}

-- Size: Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.shares.size = 8

-- Display: Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_noi_itch_v3_0_2017.shares.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Sale Threshold Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator = {}

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.size = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.display = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Stock
nasdaq_nsmequities_noi_itch_v3_0_2017.stock = {}

-- Size: Stock
nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size = 8

-- Display: Stock
nasdaq_nsmequities_noi_itch_v3_0_2017.stock.display = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp = {}

-- Size: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size = 6

-- Display: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp_format == 0 then
    return "Timestamp: "..value
  end

  -- Parse nanoseconds since midnight
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nasdaq_nsmequities_noi_itch_v3_0_2017.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", nanoseconds)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("%H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number = {}

-- Size: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.tracking_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NsmEquities Noi Itch 3.0.2017
-----------------------------------------------------------------------

-- Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message = {}

-- Size: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.size

-- Display: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_time.dissect(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quotation_release_qualifier.dissect(buffer, index, packet, parent)

  -- Ipo Price: 4 Byte Unsigned Fixed Width Integer
  index, ipo_price = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message = {}

-- Size: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.shares.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.size

-- Display: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Shares: 8 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_noi_itch_v3_0_2017.shares.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_price.dissect(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_noi_itch_v3_0_2017.match_number.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Noii Message
nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message = {}

-- Size: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.size

-- Display: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_nsmequities_noi_itch_v3_0_2017.paired_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_nsmequities_noi_itch_v3_0_2017.imbalance_direction.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_nsmequities_noi_itch_v3_0_2017.far_price.dissect(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_nsmequities_noi_itch_v3_0_2017.near_price.dissect(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_nsmequities_noi_itch_v3_0_2017.current_reference_price.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_nsmequities_noi_itch_v3_0_2017.cross_type.dissect(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 13 values
  index, price_variation_indicator = nasdaq_nsmequities_noi_itch_v3_0_2017.price_variation_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.fields(buffer, offset, packet, parent)
  end
end

-- Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message = {}

-- Size: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.size

-- Display: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message = {}

-- Size: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.reason.size

-- Display: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 3 values
  index, current_trading_state = nasdaq_nsmequities_noi_itch_v3_0_2017.current_trading_state.dissect(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_nsmequities_noi_itch_v3_0_2017.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message = {}

-- Size: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.stock.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.size

-- Display: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_2017.stock.dissect(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_nsmequities_noi_itch_v3_0_2017.market_category.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_nsmequities_noi_itch_v3_0_2017.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_nsmequities_noi_itch_v3_0_2017.round_lots_only.dissect(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_classification.dissect(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = nasdaq_nsmequities_noi_itch_v3_0_2017.issue_sub_type.dissect(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_nsmequities_noi_itch_v3_0_2017.authenticity.dissect(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_nsmequities_noi_itch_v3_0_2017.short_sale_threshold_indicator.dissect(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_flag.dissect(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_nsmequities_noi_itch_v3_0_2017.luld_reference_price_tier.dissect(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_flag.dissect(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_nsmequities_noi_itch_v3_0_2017.etp_leverage_factor.dissect(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_nsmequities_noi_itch_v3_0_2017.inverse_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message = {}

-- Size: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.size

-- Display: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_2017.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_2017.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index, event_code = nasdaq_nsmequities_noi_itch_v3_0_2017.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nsmequities_noi_itch_v3_0_2017.payload = {}

-- Dissect: Payload
nasdaq_nsmequities_noi_itch_v3_0_2017.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.stock_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.stock_trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.reg_sho_restriction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.noii_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_noi_itch_v3_0_2017.ipo_quoting_period_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nsmequities_noi_itch_v3_0_2017.message_header = {}

-- Size: Message Header
nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.size

-- Display: Message Header
nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nsmequities_noi_itch_v3_0_2017.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = nasdaq_nsmequities_noi_itch_v3_0_2017.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nsmequities_noi_itch_v3_0_2017.message = {}

-- Read runtime size of: Message
nasdaq_nsmequities_noi_itch_v3_0_2017.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nsmequities_noi_itch_v3_0_2017.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_noi_itch_v3_0_2017.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_noi_itch_v3_0_2017.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = nasdaq_nsmequities_noi_itch_v3_0_2017.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_noi_itch_v3_0_2017.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nsmequities_noi_itch_v3_0_2017.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.message, buffer(offset, 0))
    local current = nasdaq_nsmequities_noi_itch_v3_0_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nsmequities_noi_itch_v3_0_2017.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_nsmequities_noi_itch_v3_0_2017.messages = {}

-- Dissect: Messages
nasdaq_nsmequities_noi_itch_v3_0_2017.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_nsmequities_noi_itch_v3_0_2017.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header = {}

-- Size: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.size =
  nasdaq_nsmequities_noi_itch_v3_0_2017.session.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.size + 
  nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.size

-- Display: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_noi_itch_v3_0_2017.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nsmequities_noi_itch_v3_0_2017.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nsmequities_noi_itch_v3_0_2017.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nsmequities_noi_itch_v3_0_2017.packet = {}

-- Verify required size of Udp packet
nasdaq_nsmequities_noi_itch_v3_0_2017.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.size
end

-- Dissect Packet
nasdaq_nsmequities_noi_itch_v3_0_2017.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_noi_itch_v3_0_2017.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nsmequities_noi_itch_v3_0_2017.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nsmequities_noi_itch_v3_0_2017.init()
end

-- Dissector for Nasdaq NsmEquities Noi Itch 3.0.2017
function omi_nasdaq_nsmequities_noi_itch_v3_0_2017.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nsmequities_noi_itch_v3_0_2017.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nsmequities_noi_itch_v3_0_2017, buffer(), omi_nasdaq_nsmequities_noi_itch_v3_0_2017.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_noi_itch_v3_0_2017.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NsmEquities Noi Itch 3.0.2017 (Udp)
local function omi_nasdaq_nsmequities_noi_itch_v3_0_2017_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nsmequities_noi_itch_v3_0_2017.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nsmequities_noi_itch_v3_0_2017
  omi_nasdaq_nsmequities_noi_itch_v3_0_2017.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Noi Itch 3.0.2017
omi_nasdaq_nsmequities_noi_itch_v3_0_2017:register_heuristic("udp", omi_nasdaq_nsmequities_noi_itch_v3_0_2017_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0.2017
--   Date: Tuesday, September 12, 2017
--   Specification: NOIViewSpecification.pdf
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
