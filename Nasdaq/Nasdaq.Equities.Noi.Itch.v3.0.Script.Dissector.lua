-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Equities Noi Itch 3.0 Protocol
local nasdaq_equities_noi_itch_v3_0 = Proto("Nasdaq.Equities.Noi.Itch.v3.0.Lua", "Nasdaq Equities Noi Itch 3.0")

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

-- Nasdaq Equities Noi Itch 3.0 Fields
nasdaq_equities_noi_itch_v3_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.equities.noi.itch.v3.0.authenticity", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.count = ProtoField.new("Count", "nasdaq.equities.noi.itch.v3.0.count", ftypes.UINT16)
nasdaq_equities_noi_itch_v3_0.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.equities.noi.itch.v3.0.crossprice", ftypes.INT32)
nasdaq_equities_noi_itch_v3_0.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.equities.noi.itch.v3.0.crosstrademessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.equities.noi.itch.v3.0.crosstype", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.equities.noi.itch.v3.0.currentreferenceprice", ftypes.INT32)
nasdaq_equities_noi_itch_v3_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.equities.noi.itch.v3.0.currenttradingstate", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.equities.noi.itch.v3.0.etpflag", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.equities.noi.itch.v3.0.etpleveragefactor", ftypes.UINT32)
nasdaq_equities_noi_itch_v3_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.equities.noi.itch.v3.0.eventcode", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.far_price = ProtoField.new("Far Price", "nasdaq.equities.noi.itch.v3.0.farprice", ftypes.INT32)
nasdaq_equities_noi_itch_v3_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.equities.noi.itch.v3.0.financialstatusindicator", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.equities.noi.itch.v3.0.imbalancedirection", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.equities.noi.itch.v3.0.imbalanceshares", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.equities.noi.itch.v3.0.inverseindicator", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.equities.noi.itch.v3.0.ipoflag", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.equities.noi.itch.v3.0.ipoprice", ftypes.INT32)
nasdaq_equities_noi_itch_v3_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.equities.noi.itch.v3.0.ipoquotationreleasequalifier", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.equities.noi.itch.v3.0.ipoquotationreleasetime", ftypes.UINT32)
nasdaq_equities_noi_itch_v3_0.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.equities.noi.itch.v3.0.ipoquotingperiodupdatemessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.equities.noi.itch.v3.0.issueclassification", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.equities.noi.itch.v3.0.issuesubtype", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.length = ProtoField.new("Length", "nasdaq.equities.noi.itch.v3.0.length", ftypes.UINT16)
nasdaq_equities_noi_itch_v3_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.equities.noi.itch.v3.0.luldreferencepricetier", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.equities.noi.itch.v3.0.marketcategory", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.equities.noi.itch.v3.0.matchnumber", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.message = ProtoField.new("Message", "nasdaq.equities.noi.itch.v3.0.message", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.equities.noi.itch.v3.0.messageheader", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.equities.noi.itch.v3.0.messagetype", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.near_price = ProtoField.new("Near Price", "nasdaq.equities.noi.itch.v3.0.nearprice", ftypes.INT32)
nasdaq_equities_noi_itch_v3_0.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.equities.noi.itch.v3.0.noiimessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.packet = ProtoField.new("Packet", "nasdaq.equities.noi.itch.v3.0.packet", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.equities.noi.itch.v3.0.packetheader", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.equities.noi.itch.v3.0.pairedshares", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.payload = ProtoField.new("Payload", "nasdaq.equities.noi.itch.v3.0.payload", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.equities.noi.itch.v3.0.pricevariationindicator", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.reason = ProtoField.new("Reason", "nasdaq.equities.noi.itch.v3.0.reason", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.equities.noi.itch.v3.0.regshoaction", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.equities.noi.itch.v3.0.regshorestrictionmessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.equities.noi.itch.v3.0.roundlotsize", ftypes.UINT32)
nasdaq_equities_noi_itch_v3_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.equities.noi.itch.v3.0.roundlotsonly", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.equities.noi.itch.v3.0.sequence", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.session = ProtoField.new("Session", "nasdaq.equities.noi.itch.v3.0.session", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.shares = ProtoField.new("Shares", "nasdaq.equities.noi.itch.v3.0.shares", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.equities.noi.itch.v3.0.shortsalethresholdindicator", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.stock = ProtoField.new("Stock", "nasdaq.equities.noi.itch.v3.0.stock", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.equities.noi.itch.v3.0.stockdirectorymessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.equities.noi.itch.v3.0.stocktradingactionmessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.equities.noi.itch.v3.0.systemeventmessage", ftypes.STRING)
nasdaq_equities_noi_itch_v3_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.equities.noi.itch.v3.0.timestamp", ftypes.UINT64)
nasdaq_equities_noi_itch_v3_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.equities.noi.itch.v3.0.trackingnumber", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Equities Noi Itch 3.0 Element Dissection Options
show.cross_trade_message = true
show.ipo_quoting_period_update_message = true
show.message = true
show.message_header = true
show.noii_message = true
show.packet = true
show.packet_header = true
show.reg_sho_restriction_message = true
show.stock_directory_message = true
show.stock_trading_action_message = true
show.system_event_message = true
show.payload = false

-- Register Nasdaq Equities Noi Itch 3.0 Show Options
nasdaq_equities_noi_itch_v3_0.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message = Pref.bool("Show Ipo Quoting Period Update Message", show.ipo_quoting_period_update_message, "Parse and add Ipo Quoting Period Update Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_noii_message = Pref.bool("Show Noii Message", show.noii_message, "Parse and add Noii Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_equities_noi_itch_v3_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_equities_noi_itch_v3_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cross_trade_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_cross_trade_message then
    show.cross_trade_message = nasdaq_equities_noi_itch_v3_0.prefs.show_cross_trade_message
    changed = true
  end
  if show.ipo_quoting_period_update_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message then
    show.ipo_quoting_period_update_message = nasdaq_equities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message
    changed = true
  end
  if show.message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_message then
    show.message = nasdaq_equities_noi_itch_v3_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_equities_noi_itch_v3_0.prefs.show_message_header then
    show.message_header = nasdaq_equities_noi_itch_v3_0.prefs.show_message_header
    changed = true
  end
  if show.noii_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_noii_message then
    show.noii_message = nasdaq_equities_noi_itch_v3_0.prefs.show_noii_message
    changed = true
  end
  if show.packet ~= nasdaq_equities_noi_itch_v3_0.prefs.show_packet then
    show.packet = nasdaq_equities_noi_itch_v3_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_equities_noi_itch_v3_0.prefs.show_packet_header then
    show.packet_header = nasdaq_equities_noi_itch_v3_0.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_restriction_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = nasdaq_equities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_equities_noi_itch_v3_0.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_equities_noi_itch_v3_0.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_equities_noi_itch_v3_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_equities_noi_itch_v3_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_equities_noi_itch_v3_0.prefs.show_payload then
    show.payload = nasdaq_equities_noi_itch_v3_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Equities Noi Itch 3.0
-----------------------------------------------------------------------

-- Size: Ipo Price
size_of.ipo_price = 4

-- Display: Ipo Price
display.ipo_price = function(value)
  return "Ipo Price: "..value
end

-- Dissect: Ipo Price
dissect.ipo_price = function(buffer, offset, packet, parent)
  local length = size_of.ipo_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.ipo_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Qualifier
size_of.ipo_quotation_release_qualifier = 1

-- Display: Ipo Quotation Release Qualifier
display.ipo_quotation_release_qualifier = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
dissect.ipo_quotation_release_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.ipo_quotation_release_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ipo_quotation_release_qualifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Time
size_of.ipo_quotation_release_time = 4

-- Display: Ipo Quotation Release Time
display.ipo_quotation_release_time = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
dissect.ipo_quotation_release_time = function(buffer, offset, packet, parent)
  local length = size_of.ipo_quotation_release_time
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.ipo_quotation_release_time(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.ipo_quotation_release_time, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.stock, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.timestamp, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ipo Quoting Period Update Message
size_of.ipo_quoting_period_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.ipo_quotation_release_time

  index = index + size_of.ipo_quotation_release_qualifier

  index = index + size_of.ipo_price

  return index
end

-- Display: Ipo Quoting Period Update Message
display.ipo_quoting_period_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
dissect.ipo_quoting_period_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = dissect.ipo_quotation_release_time(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = dissect.ipo_quotation_release_qualifier(buffer, index, packet, parent)

  -- Ipo Price: 4 Byte Signed Fixed Width Integer
  index, ipo_price = dissect.ipo_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
dissect.ipo_quoting_period_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ipo_quoting_period_update_message then
    local length = size_of.ipo_quoting_period_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ipo_quoting_period_update_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.ipo_quoting_period_update_message, range, display)
  end

  return dissect.ipo_quoting_period_update_message_fields(buffer, offset, packet, parent)
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

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.cross_type, range, value, display)

  return offset + length, value
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.match_number, range, value, display)

  return offset + length, value
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Size: Shares
size_of.shares = 8

-- Display: Shares
display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
dissect.shares = function(buffer, offset, packet, parent)
  local length = size_of.shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.shares

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

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Shares: 8 Byte Unsigned Fixed Width Integer
  index, shares = dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Signed Fixed Width Integer
  index, cross_price = dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.cross_trade_message, range, display)
  end

  return dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Variation Indicator
size_of.price_variation_indicator = 1

-- Display: Price Variation Indicator
display.price_variation_indicator = function(value)
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
dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = size_of.price_variation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.price_variation_indicator, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.current_reference_price, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.near_price, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
size_of.imbalance_direction = 1

-- Display: Imbalance Direction
display.imbalance_direction = function(value)
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
dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.imbalance_direction, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.imbalance_shares, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Noii Message
size_of.noii_message = function(buffer, offset)
  local index = 0

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

-- Display: Noii Message
display.noii_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Noii Message
dissect.noii_message_fields = function(buffer, offset, packet, parent)
  local index = offset

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

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 13 values
  index, price_variation_indicator = dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
dissect.noii_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.noii_message then
    local length = size_of.noii_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.noii_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.noii_message, range, display)
  end

  return dissect.noii_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Restriction Message
display.reg_sho_restriction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

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

-- Dissect: Reg Sho Restriction Message
dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reg_sho_restriction_message then
    local length = size_of.reg_sho_restriction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reg_sho_restriction_message(buffer, packet, parent)
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.reg_sho_restriction_message, range, display)
  end

  return dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Current Trading State
size_of.current_trading_state = 1

-- Display: Current Trading State
display.current_trading_state = function(value)
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
dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + size_of.tracking_number

  index = index + size_of.timestamp

  index = index + size_of.stock

  index = index + size_of.current_trading_state

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

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = dissect.stock(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 3 values
  index, current_trading_state = dissect.current_trading_state(buffer, index, packet, parent)

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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.stock_trading_action_message, range, display)
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.inverse_indicator, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.etp_leverage_factor, range, value, display)

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
    return "Etp Flag: Not Available (<whitespace>)"
  end

  return "Etp Flag: Unknown("..value..")"
end

-- Dissect: Etp Flag
dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.etp_flag, range, value, display)

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
    return "Luld Reference Price Tier: Not Applicable (<whitespace>)"
  end

  return "Luld Reference Price Tier: Unknown("..value..")"
end

-- Dissect: Luld Reference Price Tier
dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
size_of.ipo_flag = 1

-- Display: Ipo Flag
display.ipo_flag = function(value)
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
dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.ipo_flag, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.short_sale_threshold_indicator, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.authenticity, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.issue_sub_type, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
size_of.round_lots_only = 1

-- Display: Round Lots Only
display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.round_lots_only, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.round_lot_size, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.financial_status_indicator, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
size_of.stock_directory_message = function(buffer, offset)
  local index = 0

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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.stock_directory_message, range, display)
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
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

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

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.system_event_message, range, display)
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
  -- Size of Reg Sho Restriction Message
  if message_type == "Y" then
    return size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Noii Message
  if message_type == "I" then
    return size_of.noii_message(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Ipo Quoting Period Update Message
  if message_type == "K" then
    return size_of.ipo_quoting_period_update_message(buffer, offset)
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
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return dissect.noii_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return dissect.ipo_quoting_period_update_message(buffer, offset, packet, parent)
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
  local element = parent:add(nasdaq_equities_noi_itch_v3_0.fields.payload, range, display)

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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.message_type, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.length, range, value, display)

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

  -- Message Type: 1 Byte Ascii String Enum with 7 values
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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 7 branches
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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.message, range, display)
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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.count, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.sequence, range, value, display)

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

  parent:add(nasdaq_equities_noi_itch_v3_0.fields.session, range, value, display)

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
    parent = parent:add(nasdaq_equities_noi_itch_v3_0.fields.packet_header, range, display)
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
function nasdaq_equities_noi_itch_v3_0.init()
end

-- Dissector for Nasdaq Equities Noi Itch 3.0
function nasdaq_equities_noi_itch_v3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_equities_noi_itch_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_equities_noi_itch_v3_0, buffer(), nasdaq_equities_noi_itch_v3_0.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_equities_noi_itch_v3_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_equities_noi_itch_v3_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Equities Noi Itch 3.0
local function nasdaq_equities_noi_itch_v3_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_equities_noi_itch_v3_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_equities_noi_itch_v3_0
  nasdaq_equities_noi_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Equities Noi Itch 3.0
nasdaq_equities_noi_itch_v3_0:register_heuristic("udp", nasdaq_equities_noi_itch_v3_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 3.0
--   Date: Tuesday, September 12, 2017
--   Specification: NOIViewSpecification.pdf
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
