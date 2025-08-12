-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Noi Itch 3.0 Protocol
local nasdaq_nsmequities_noi_itch_v3_0 = Proto("Nasdaq.NsmEquities.Noi.Itch.v3.0.Lua", "Nasdaq NsmEquities Noi Itch 3.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_nsmequities_noi_itch_v3_0_display = {}
local nasdaq_nsmequities_noi_itch_v3_0_dissect = {}
local nasdaq_nsmequities_noi_itch_v3_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Noi Itch 3.0 Fields
nasdaq_nsmequities_noi_itch_v3_0.fields.authenticity = ProtoField.new("Authenticity", "nasdaq.nsmequities.noi.itch.v3.0.authenticity", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.count = ProtoField.new("Count", "nasdaq.nsmequities.noi.itch.v3.0.count", ftypes.UINT16)
nasdaq_nsmequities_noi_itch_v3_0.fields.cross_price = ProtoField.new("Cross Price", "nasdaq.nsmequities.noi.itch.v3.0.crossprice", ftypes.DOUBLE)
nasdaq_nsmequities_noi_itch_v3_0.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nasdaq.nsmequities.noi.itch.v3.0.crosstrademessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.nsmequities.noi.itch.v3.0.crosstype", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.current_reference_price = ProtoField.new("Current Reference Price", "nasdaq.nsmequities.noi.itch.v3.0.currentreferenceprice", ftypes.DOUBLE)
nasdaq_nsmequities_noi_itch_v3_0.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.nsmequities.noi.itch.v3.0.currenttradingstate", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.etp_flag = ProtoField.new("Etp Flag", "nasdaq.nsmequities.noi.itch.v3.0.etpflag", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.etp_leverage_factor = ProtoField.new("Etp Leverage Factor", "nasdaq.nsmequities.noi.itch.v3.0.etpleveragefactor", ftypes.UINT32)
nasdaq_nsmequities_noi_itch_v3_0.fields.event_code = ProtoField.new("Event Code", "nasdaq.nsmequities.noi.itch.v3.0.eventcode", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.far_price = ProtoField.new("Far Price", "nasdaq.nsmequities.noi.itch.v3.0.farprice", ftypes.DOUBLE)
nasdaq_nsmequities_noi_itch_v3_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "nasdaq.nsmequities.noi.itch.v3.0.financialstatusindicator", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.imbalance_direction = ProtoField.new("Imbalance Direction", "nasdaq.nsmequities.noi.itch.v3.0.imbalancedirection", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "nasdaq.nsmequities.noi.itch.v3.0.imbalanceshares", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.inverse_indicator = ProtoField.new("Inverse Indicator", "nasdaq.nsmequities.noi.itch.v3.0.inverseindicator", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_flag = ProtoField.new("Ipo Flag", "nasdaq.nsmequities.noi.itch.v3.0.ipoflag", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_price = ProtoField.new("Ipo Price", "nasdaq.nsmequities.noi.itch.v3.0.ipoprice", ftypes.DOUBLE)
nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quotation_release_qualifier = ProtoField.new("Ipo Quotation Release Qualifier", "nasdaq.nsmequities.noi.itch.v3.0.ipoquotationreleasequalifier", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quotation_release_time = ProtoField.new("Ipo Quotation Release Time", "nasdaq.nsmequities.noi.itch.v3.0.ipoquotationreleasetime", ftypes.UINT32)
nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quoting_period_update_message = ProtoField.new("Ipo Quoting Period Update Message", "nasdaq.nsmequities.noi.itch.v3.0.ipoquotingperiodupdatemessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.issue_classification = ProtoField.new("Issue Classification", "nasdaq.nsmequities.noi.itch.v3.0.issueclassification", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.issue_sub_type = ProtoField.new("Issue Sub Type", "nasdaq.nsmequities.noi.itch.v3.0.issuesubtype", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.length = ProtoField.new("Length", "nasdaq.nsmequities.noi.itch.v3.0.length", ftypes.UINT16)
nasdaq_nsmequities_noi_itch_v3_0.fields.luld_reference_price_tier = ProtoField.new("Luld Reference Price Tier", "nasdaq.nsmequities.noi.itch.v3.0.luldreferencepricetier", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.market_category = ProtoField.new("Market Category", "nasdaq.nsmequities.noi.itch.v3.0.marketcategory", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.match_number = ProtoField.new("Match Number", "nasdaq.nsmequities.noi.itch.v3.0.matchnumber", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.message = ProtoField.new("Message", "nasdaq.nsmequities.noi.itch.v3.0.message", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.nsmequities.noi.itch.v3.0.messageheader", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.nsmequities.noi.itch.v3.0.messagetype", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.near_price = ProtoField.new("Near Price", "nasdaq.nsmequities.noi.itch.v3.0.nearprice", ftypes.DOUBLE)
nasdaq_nsmequities_noi_itch_v3_0.fields.noii_message = ProtoField.new("Noii Message", "nasdaq.nsmequities.noi.itch.v3.0.noiimessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.packet = ProtoField.new("Packet", "nasdaq.nsmequities.noi.itch.v3.0.packet", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nsmequities.noi.itch.v3.0.packetheader", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.paired_shares = ProtoField.new("Paired Shares", "nasdaq.nsmequities.noi.itch.v3.0.pairedshares", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.payload = ProtoField.new("Payload", "nasdaq.nsmequities.noi.itch.v3.0.payload", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.price_variation_indicator = ProtoField.new("Price Variation Indicator", "nasdaq.nsmequities.noi.itch.v3.0.pricevariationindicator", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.reason = ProtoField.new("Reason", "nasdaq.nsmequities.noi.itch.v3.0.reason", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "nasdaq.nsmequities.noi.itch.v3.0.regshoaction", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.reg_sho_restriction_message = ProtoField.new("Reg Sho Restriction Message", "nasdaq.nsmequities.noi.itch.v3.0.regshorestrictionmessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nsmequities.noi.itch.v3.0.roundlotsize", ftypes.UINT32)
nasdaq_nsmequities_noi_itch_v3_0.fields.round_lots_only = ProtoField.new("Round Lots Only", "nasdaq.nsmequities.noi.itch.v3.0.roundlotsonly", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.sequence = ProtoField.new("Sequence", "nasdaq.nsmequities.noi.itch.v3.0.sequence", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.session = ProtoField.new("Session", "nasdaq.nsmequities.noi.itch.v3.0.session", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.shares = ProtoField.new("Shares", "nasdaq.nsmequities.noi.itch.v3.0.shares", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.short_sale_threshold_indicator = ProtoField.new("Short Sale Threshold Indicator", "nasdaq.nsmequities.noi.itch.v3.0.shortsalethresholdindicator", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.stock = ProtoField.new("Stock", "nasdaq.nsmequities.noi.itch.v3.0.stock", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.stock_directory_message = ProtoField.new("Stock Directory Message", "nasdaq.nsmequities.noi.itch.v3.0.stockdirectorymessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.stock_trading_action_message = ProtoField.new("Stock Trading Action Message", "nasdaq.nsmequities.noi.itch.v3.0.stocktradingactionmessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nsmequities.noi.itch.v3.0.systemeventmessage", ftypes.STRING)
nasdaq_nsmequities_noi_itch_v3_0.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nsmequities.noi.itch.v3.0.timestamp", ftypes.UINT64)
nasdaq_nsmequities_noi_itch_v3_0.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.nsmequities.noi.itch.v3.0.trackingnumber", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq NsmEquities Noi Itch 3.0 Element Dissection Options
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

-- Register Nasdaq NsmEquities Noi Itch 3.0 Show Options
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_cross_trade_message = Pref.bool("Show Cross Trade Message", show.cross_trade_message, "Parse and add Cross Trade Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message = Pref.bool("Show Ipo Quoting Period Update Message", show.ipo_quoting_period_update_message, "Parse and add Ipo Quoting Period Update Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_noii_message = Pref.bool("Show Noii Message", show.noii_message, "Parse and add Noii Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message = Pref.bool("Show Reg Sho Restriction Message", show.reg_sho_restriction_message, "Parse and add Reg Sho Restriction Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_directory_message = Pref.bool("Show Stock Directory Message", show.stock_directory_message, "Parse and add Stock Directory Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_trading_action_message = Pref.bool("Show Stock Trading Action Message", show.stock_trading_action_message, "Parse and add Stock Trading Action Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
nasdaq_nsmequities_noi_itch_v3_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nasdaq_nsmequities_noi_itch_v3_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cross_trade_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_cross_trade_message then
    show.cross_trade_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_cross_trade_message
    changed = true
  end
  if show.ipo_quoting_period_update_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message then
    show.ipo_quoting_period_update_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_ipo_quoting_period_update_message
    changed = true
  end
  if show.message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message then
    show.message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message_header then
    show.message_header = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_message_header
    changed = true
  end
  if show.noii_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_noii_message then
    show.noii_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_noii_message
    changed = true
  end
  if show.packet ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet then
    show.packet = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet_header then
    show.packet_header = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_packet_header
    changed = true
  end
  if show.reg_sho_restriction_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message then
    show.reg_sho_restriction_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_reg_sho_restriction_message
    changed = true
  end
  if show.stock_directory_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_directory_message then
    show.stock_directory_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_directory_message
    changed = true
  end
  if show.stock_trading_action_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_trading_action_message then
    show.stock_trading_action_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_stock_trading_action_message
    changed = true
  end
  if show.system_event_message ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_system_event_message then
    show.system_event_message = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_system_event_message
    changed = true
  end
  if show.payload ~= nasdaq_nsmequities_noi_itch_v3_0.prefs.show_payload then
    show.payload = nasdaq_nsmequities_noi_itch_v3_0.prefs.show_payload
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
-- Dissect Nasdaq NsmEquities Noi Itch 3.0
-----------------------------------------------------------------------

-- Size: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_price = 4

-- Display: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_display.ipo_price = function(value)
  return "Ipo Price: "..value
end

-- Translate: Ipo Price
translate.ipo_price = function(raw)
  return raw/10000
end

-- Dissect: Ipo Price
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.ipo_price(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.ipo_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_price, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_qualifier = 1

-- Display: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quotation_release_qualifier = function(value)
  if value == "A" then
    return "Ipo Quotation Release Qualifier: Anticipated Quotation Release Time (A)"
  end
  if value == "C" then
    return "Ipo Quotation Release Qualifier: Ipo Release Canceled Or Postponed (C)"
  end

  return "Ipo Quotation Release Qualifier: Unknown("..value..")"
end

-- Dissect: Ipo Quotation Release Qualifier
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quotation_release_qualifier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_qualifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quotation_release_qualifier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quotation_release_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_time = 4

-- Display: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quotation_release_time = function(value)
  return "Ipo Quotation Release Time: "..value
end

-- Dissect: Ipo Quotation Release Time
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quotation_release_time = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_time
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quotation_release_time(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quotation_release_time, range, value, display)

  return offset + length, value
end

-- Size: Stock
nasdaq_nsmequities_noi_itch_v3_0_size_of.stock = 8

-- Display: Stock
nasdaq_nsmequities_noi_itch_v3_0_display.stock = function(value)
  return "Stock: "..value
end

-- Dissect: Stock
nasdaq_nsmequities_noi_itch_v3_0_dissect.stock = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.stock
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.stock(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.stock, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp = 6

-- Display: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number = 2

-- Display: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_display.tracking_number = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.tracking_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quoting_period_update_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_time

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quotation_release_qualifier

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_price

  return index
end

-- Display: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quoting_period_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quoting_period_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Ipo Quotation Release Time: 4 Byte Unsigned Fixed Width Integer
  index, ipo_quotation_release_time = nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quotation_release_time(buffer, index, packet, parent)

  -- Ipo Quotation Release Qualifier: 1 Byte Ascii String Enum with 2 values
  index, ipo_quotation_release_qualifier = nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quotation_release_qualifier(buffer, index, packet, parent)

  -- Ipo Price: 4 Byte Unsigned Fixed Width Integer
  index, ipo_price = nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Ipo Quoting Period Update Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quoting_period_update_message = function(buffer, offset, packet, parent)
  if show.ipo_quoting_period_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_quoting_period_update_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quoting_period_update_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.ipo_quoting_period_update_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quoting_period_update_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cross Type
nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_type = 1

-- Display: Cross Type
nasdaq_nsmequities_noi_itch_v3_0_display.cross_type = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Match Number
nasdaq_nsmequities_noi_itch_v3_0_size_of.match_number = 8

-- Display: Match Number
nasdaq_nsmequities_noi_itch_v3_0_display.match_number = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_nsmequities_noi_itch_v3_0_dissect.match_number = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.match_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.match_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Size: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_price = 4

-- Display: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_display.cross_price = function(value)
  return "Cross Price: "..value
end

-- Translate: Cross Price
translate.cross_price = function(raw)
  return raw/10000
end

-- Dissect: Cross Price
nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.cross_price(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.cross_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.cross_price, range, value, display)

  return offset + length, value
end

-- Size: Shares
nasdaq_nsmequities_noi_itch_v3_0_size_of.shares = 8

-- Display: Shares
nasdaq_nsmequities_noi_itch_v3_0_display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
nasdaq_nsmequities_noi_itch_v3_0_dissect.shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_trade_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.shares

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_price

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.match_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_type

  return index
end

-- Display: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_display.cross_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Shares: 8 Byte Unsigned Fixed Width Integer
  index, shares = nasdaq_nsmequities_noi_itch_v3_0_dissect.shares(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Cross Price: 4 Byte Unsigned Fixed Width Integer
  index, cross_price = nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_price(buffer, index, packet, parent)

  -- Match Number: 8 Byte Unsigned Fixed Width Integer
  index, match_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.match_number(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_trade_message = function(buffer, offset, packet, parent)
  if show.cross_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.cross_trade_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.cross_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_size_of.price_variation_indicator = 1

-- Display: Price Variation Indicator
nasdaq_nsmequities_noi_itch_v3_0_display.price_variation_indicator = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.price_variation_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.price_variation_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.price_variation_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.price_variation_indicator, range, value, display)

  return offset + length, value
end

-- Size: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_size_of.current_reference_price = 4

-- Display: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_display.current_reference_price = function(value)
  return "Current Reference Price: "..value
end

-- Translate: Current Reference Price
translate.current_reference_price = function(raw)
  return raw/10000
end

-- Dissect: Current Reference Price
nasdaq_nsmequities_noi_itch_v3_0_dissect.current_reference_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.current_reference_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.current_reference_price(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.current_reference_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.current_reference_price, range, value, display)

  return offset + length, value
end

-- Size: Near Price
nasdaq_nsmequities_noi_itch_v3_0_size_of.near_price = 4

-- Display: Near Price
nasdaq_nsmequities_noi_itch_v3_0_display.near_price = function(value)
  return "Near Price: "..value
end

-- Translate: Near Price
translate.near_price = function(raw)
  return raw/10000
end

-- Dissect: Near Price
nasdaq_nsmequities_noi_itch_v3_0_dissect.near_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.near_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.near_price(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.near_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.near_price, range, value, display)

  return offset + length, value
end

-- Size: Far Price
nasdaq_nsmequities_noi_itch_v3_0_size_of.far_price = 4

-- Display: Far Price
nasdaq_nsmequities_noi_itch_v3_0_display.far_price = function(value)
  return "Far Price: "..value
end

-- Translate: Far Price
translate.far_price = function(raw)
  return raw/10000
end

-- Dissect: Far Price
nasdaq_nsmequities_noi_itch_v3_0_dissect.far_price = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.far_price
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.far_price(raw)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.far_price(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_direction = 1

-- Display: Imbalance Direction
nasdaq_nsmequities_noi_itch_v3_0_display.imbalance_direction = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.imbalance_direction = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_direction
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.imbalance_direction(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.imbalance_direction, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_shares = 8

-- Display: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_display.imbalance_shares = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
nasdaq_nsmequities_noi_itch_v3_0_dissect.imbalance_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.imbalance_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Size: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_size_of.paired_shares = 8

-- Display: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_display.paired_shares = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
nasdaq_nsmequities_noi_itch_v3_0_dissect.paired_shares = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.paired_shares
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.paired_shares(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.noii_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.paired_shares

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_shares

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.imbalance_direction

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.far_price

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.near_price

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.current_reference_price

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_type

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.price_variation_indicator

  return index
end

-- Display: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_display.noii_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.noii_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Paired Shares: 8 Byte Unsigned Fixed Width Integer
  index, paired_shares = nasdaq_nsmequities_noi_itch_v3_0_dissect.paired_shares(buffer, index, packet, parent)

  -- Imbalance Shares: 8 Byte Unsigned Fixed Width Integer
  index, imbalance_shares = nasdaq_nsmequities_noi_itch_v3_0_dissect.imbalance_shares(buffer, index, packet, parent)

  -- Imbalance Direction: 1 Byte Ascii String Enum with 4 values
  index, imbalance_direction = nasdaq_nsmequities_noi_itch_v3_0_dissect.imbalance_direction(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Far Price: 4 Byte Unsigned Fixed Width Integer
  index, far_price = nasdaq_nsmequities_noi_itch_v3_0_dissect.far_price(buffer, index, packet, parent)

  -- Near Price: 4 Byte Unsigned Fixed Width Integer
  index, near_price = nasdaq_nsmequities_noi_itch_v3_0_dissect.near_price(buffer, index, packet, parent)

  -- Current Reference Price: 4 Byte Unsigned Fixed Width Integer
  index, current_reference_price = nasdaq_nsmequities_noi_itch_v3_0_dissect.current_reference_price(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 3 values
  index, cross_type = nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_type(buffer, index, packet, parent)

  -- Price Variation Indicator: 1 Byte Ascii String Enum with 13 values
  index, price_variation_indicator = nasdaq_nsmequities_noi_itch_v3_0_dissect.price_variation_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Noii Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.noii_message = function(buffer, offset, packet, parent)
  if show.noii_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.noii_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.noii_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.noii_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.noii_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reg Sho Action
nasdaq_nsmequities_noi_itch_v3_0_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
nasdaq_nsmequities_noi_itch_v3_0_display.reg_sho_action = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.reg_sho_restriction_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.reg_sho_action

  return index
end

-- Display: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_display.reg_sho_restriction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_restriction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 3 values
  index, reg_sho_action = nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Reg Sho Restriction Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_restriction_message = function(buffer, offset, packet, parent)
  if show.reg_sho_restriction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.reg_sho_restriction_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.reg_sho_restriction_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_restriction_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reason
nasdaq_nsmequities_noi_itch_v3_0_size_of.reason = 4

-- Display: Reason
nasdaq_nsmequities_noi_itch_v3_0_display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
nasdaq_nsmequities_noi_itch_v3_0_dissect.reason = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.reason(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Current Trading State
nasdaq_nsmequities_noi_itch_v3_0_size_of.current_trading_state = 1

-- Display: Current Trading State
nasdaq_nsmequities_noi_itch_v3_0_display.current_trading_state = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.current_trading_state = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.current_trading_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.current_trading_state(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.stock_trading_action_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.current_trading_state

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.reason

  return index
end

-- Display: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_display.stock_trading_action_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_trading_action_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Current Trading State: 1 Byte Ascii String Enum with 3 values
  index, current_trading_state = nasdaq_nsmequities_noi_itch_v3_0_dissect.current_trading_state(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = nasdaq_nsmequities_noi_itch_v3_0_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Trading Action Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_trading_action_message = function(buffer, offset, packet, parent)
  if show.stock_trading_action_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.stock_trading_action_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_trading_action_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.stock_trading_action_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_trading_action_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_size_of.inverse_indicator = 1

-- Display: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_display.inverse_indicator = function(value)
  if value == "Y" then
    return "Inverse Indicator: Inverse Etp (Y)"
  end
  if value == "N" then
    return "Inverse Indicator: Not Inverse Etp (N)"
  end

  return "Inverse Indicator: Unknown("..value..")"
end

-- Dissect: Inverse Indicator
nasdaq_nsmequities_noi_itch_v3_0_dissect.inverse_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.inverse_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.inverse_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.inverse_indicator, range, value, display)

  return offset + length, value
end

-- Size: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_leverage_factor = 4

-- Display: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_display.etp_leverage_factor = function(value)
  return "Etp Leverage Factor: "..value
end

-- Dissect: Etp Leverage Factor
nasdaq_nsmequities_noi_itch_v3_0_dissect.etp_leverage_factor = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_leverage_factor
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.etp_leverage_factor(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.etp_leverage_factor, range, value, display)

  return offset + length, value
end

-- Size: Etp Flag
nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_flag = 1

-- Display: Etp Flag
nasdaq_nsmequities_noi_itch_v3_0_display.etp_flag = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.etp_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.etp_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.etp_flag, range, value, display)

  return offset + length, value
end

-- Size: Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_size_of.luld_reference_price_tier = 1

-- Display: Luld Reference Price Tier
nasdaq_nsmequities_noi_itch_v3_0_display.luld_reference_price_tier = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.luld_reference_price_tier = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.luld_reference_price_tier
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.luld_reference_price_tier(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.luld_reference_price_tier, range, value, display)

  return offset + length, value
end

-- Size: Ipo Flag
nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_flag = 1

-- Display: Ipo Flag
nasdaq_nsmequities_noi_itch_v3_0_display.ipo_flag = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_flag = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_flag
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.ipo_flag(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.ipo_flag, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Threshold Indicator
nasdaq_nsmequities_noi_itch_v3_0_size_of.short_sale_threshold_indicator = 1

-- Display: Short Sale Threshold Indicator
nasdaq_nsmequities_noi_itch_v3_0_display.short_sale_threshold_indicator = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.short_sale_threshold_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.short_sale_threshold_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.short_sale_threshold_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.short_sale_threshold_indicator, range, value, display)

  return offset + length, value
end

-- Size: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_size_of.authenticity = 1

-- Display: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_display.authenticity = function(value)
  if value == "P" then
    return "Authenticity: Live Production (P)"
  end
  if value == "T" then
    return "Authenticity: Test (T)"
  end

  return "Authenticity: Unknown("..value..")"
end

-- Dissect: Authenticity
nasdaq_nsmequities_noi_itch_v3_0_dissect.authenticity = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.authenticity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.authenticity(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.authenticity, range, value, display)

  return offset + length, value
end

-- Size: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_sub_type = 2

-- Display: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_display.issue_sub_type = function(value)
  return "Issue Sub Type: "..value
end

-- Dissect: Issue Sub Type
nasdaq_nsmequities_noi_itch_v3_0_dissect.issue_sub_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_sub_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.issue_sub_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.issue_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_classification = 1

-- Display: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_display.issue_classification = function(value)
  return "Issue Classification: "..value
end

-- Dissect: Issue Classification
nasdaq_nsmequities_noi_itch_v3_0_dissect.issue_classification = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_classification
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.issue_classification(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.issue_classification, range, value, display)

  return offset + length, value
end

-- Size: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lots_only = 1

-- Display: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_display.round_lots_only = function(value)
  if value == "Y" then
    return "Round Lots Only: Round Lots Only (Y)"
  end
  if value == "N" then
    return "Round Lots Only: No Restrictions (N)"
  end

  return "Round Lots Only: Unknown("..value..")"
end

-- Dissect: Round Lots Only
nasdaq_nsmequities_noi_itch_v3_0_dissect.round_lots_only = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lots_only
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.round_lots_only(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.round_lots_only, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lot_size = 4

-- Display: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nsmequities_noi_itch_v3_0_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
nasdaq_nsmequities_noi_itch_v3_0_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
nasdaq_nsmequities_noi_itch_v3_0_display.financial_status_indicator = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Category
nasdaq_nsmequities_noi_itch_v3_0_size_of.market_category = 1

-- Display: Market Category
nasdaq_nsmequities_noi_itch_v3_0_display.market_category = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.market_category = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.market_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.market_category(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.market_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.stock_directory_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.stock

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.market_category

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.financial_status_indicator

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lot_size

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.round_lots_only

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_classification

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.issue_sub_type

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.authenticity

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.short_sale_threshold_indicator

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_flag

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.luld_reference_price_tier

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_flag

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.etp_leverage_factor

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.inverse_indicator

  return index
end

-- Display: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_display.stock_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Stock: 8 Byte Ascii String
  index, stock = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock(buffer, index, packet, parent)

  -- Market Category: 1 Byte Ascii String Enum with 9 values
  index, market_category = nasdaq_nsmequities_noi_itch_v3_0_dissect.market_category(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = nasdaq_nsmequities_noi_itch_v3_0_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = nasdaq_nsmequities_noi_itch_v3_0_dissect.round_lot_size(buffer, index, packet, parent)

  -- Round Lots Only: 1 Byte Ascii String Enum with 2 values
  index, round_lots_only = nasdaq_nsmequities_noi_itch_v3_0_dissect.round_lots_only(buffer, index, packet, parent)

  -- Issue Classification: 1 Byte Ascii String
  index, issue_classification = nasdaq_nsmequities_noi_itch_v3_0_dissect.issue_classification(buffer, index, packet, parent)

  -- Issue Sub Type: 2 Byte Ascii String
  index, issue_sub_type = nasdaq_nsmequities_noi_itch_v3_0_dissect.issue_sub_type(buffer, index, packet, parent)

  -- Authenticity: 1 Byte Ascii String Enum with 2 values
  index, authenticity = nasdaq_nsmequities_noi_itch_v3_0_dissect.authenticity(buffer, index, packet, parent)

  -- Short Sale Threshold Indicator: 1 Byte Ascii String Enum with 3 values
  index, short_sale_threshold_indicator = nasdaq_nsmequities_noi_itch_v3_0_dissect.short_sale_threshold_indicator(buffer, index, packet, parent)

  -- Ipo Flag: 1 Byte Ascii String Enum with 3 values
  index, ipo_flag = nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_flag(buffer, index, packet, parent)

  -- Luld Reference Price Tier: 1 Byte Ascii String Enum with 3 values
  index, luld_reference_price_tier = nasdaq_nsmequities_noi_itch_v3_0_dissect.luld_reference_price_tier(buffer, index, packet, parent)

  -- Etp Flag: 1 Byte Ascii String Enum with 3 values
  index, etp_flag = nasdaq_nsmequities_noi_itch_v3_0_dissect.etp_flag(buffer, index, packet, parent)

  -- Etp Leverage Factor: 4 Byte Unsigned Fixed Width Integer
  index, etp_leverage_factor = nasdaq_nsmequities_noi_itch_v3_0_dissect.etp_leverage_factor(buffer, index, packet, parent)

  -- Inverse Indicator: 1 Byte Ascii String Enum with 2 values
  index, inverse_indicator = nasdaq_nsmequities_noi_itch_v3_0_dissect.inverse_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Directory Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_directory_message = function(buffer, offset, packet, parent)
  if show.stock_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.stock_directory_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.stock_directory_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_directory_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Event Code
nasdaq_nsmequities_noi_itch_v3_0_size_of.event_code = 1

-- Display: Event Code
nasdaq_nsmequities_noi_itch_v3_0_display.event_code = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.tracking_number

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.timestamp

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.event_code

  return index
end

-- Display: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: 2 Byte Unsigned Fixed Width Integer
  index, tracking_number = nasdaq_nsmequities_noi_itch_v3_0_dissect.tracking_number(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Unsigned Fixed Width Integer
  index, timestamp = nasdaq_nsmequities_noi_itch_v3_0_dissect.timestamp(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 7 values
  index, event_code = nasdaq_nsmequities_noi_itch_v3_0_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.system_event_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.system_event_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
nasdaq_nsmequities_noi_itch_v3_0_size_of.payload = function(buffer, offset, message_type)
  -- Size of System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.stock_directory_message(buffer, offset)
  end
  -- Size of Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.stock_trading_action_message(buffer, offset)
  end
  -- Size of Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.reg_sho_restriction_message(buffer, offset)
  end
  -- Size of Noii Message
  if message_type == "I" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.noii_message(buffer, offset)
  end
  -- Size of Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.cross_trade_message(buffer, offset)
  end
  -- Size of Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_noi_itch_v3_0_size_of.ipo_quoting_period_update_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_nsmequities_noi_itch_v3_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_nsmequities_noi_itch_v3_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Directory Message
  if message_type == "R" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Trading Action Message
  if message_type == "H" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.stock_trading_action_message(buffer, offset, packet, parent)
  end
  -- Dissect Reg Sho Restriction Message
  if message_type == "Y" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.reg_sho_restriction_message(buffer, offset, packet, parent)
  end
  -- Dissect Noii Message
  if message_type == "I" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.noii_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == "Q" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Ipo Quoting Period Update Message
  if message_type == "K" then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.ipo_quoting_period_update_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_nsmequities_noi_itch_v3_0_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_nsmequities_noi_itch_v3_0_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.payload(buffer, packet, parent)
  local element = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.payload, range, display)

  return nasdaq_nsmequities_noi_itch_v3_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nasdaq_nsmequities_noi_itch_v3_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_nsmequities_noi_itch_v3_0_display.message_type = function(value)
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
nasdaq_nsmequities_noi_itch_v3_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
nasdaq_nsmequities_noi_itch_v3_0_size_of.length = 2

-- Display: Length
nasdaq_nsmequities_noi_itch_v3_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
nasdaq_nsmequities_noi_itch_v3_0_dissect.length = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_nsmequities_noi_itch_v3_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.length

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_nsmequities_noi_itch_v3_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nsmequities_noi_itch_v3_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = nasdaq_nsmequities_noi_itch_v3_0_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = nasdaq_nsmequities_noi_itch_v3_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nsmequities_noi_itch_v3_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
nasdaq_nsmequities_noi_itch_v3_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nsmequities_noi_itch_v3_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = nasdaq_nsmequities_noi_itch_v3_0_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nsmequities_noi_itch_v3_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.message(buffer, packet, parent)
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.message, range, display)
  end

  nasdaq_nsmequities_noi_itch_v3_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Count
nasdaq_nsmequities_noi_itch_v3_0_size_of.count = 2

-- Display: Count
nasdaq_nsmequities_noi_itch_v3_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
nasdaq_nsmequities_noi_itch_v3_0_dissect.count = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
nasdaq_nsmequities_noi_itch_v3_0_size_of.sequence = 8

-- Display: Sequence
nasdaq_nsmequities_noi_itch_v3_0_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
nasdaq_nsmequities_noi_itch_v3_0_dissect.sequence = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nsmequities_noi_itch_v3_0_display.sequence(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_nsmequities_noi_itch_v3_0_size_of.session = 10

-- Display: Session
nasdaq_nsmequities_noi_itch_v3_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nsmequities_noi_itch_v3_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_nsmequities_noi_itch_v3_0_size_of.session
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

  local display = nasdaq_nsmequities_noi_itch_v3_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.session

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.sequence

  index = index + nasdaq_nsmequities_noi_itch_v3_0_size_of.count

  return index
end

-- Display: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nsmequities_noi_itch_v3_0_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = nasdaq_nsmequities_noi_itch_v3_0_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = nasdaq_nsmequities_noi_itch_v3_0_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_nsmequities_noi_itch_v3_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nasdaq_nsmequities_noi_itch_v3_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nsmequities_noi_itch_v3_0_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nsmequities_noi_itch_v3_0_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return nasdaq_nsmequities_noi_itch_v3_0_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
nasdaq_nsmequities_noi_itch_v3_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nsmequities_noi_itch_v3_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Length
    local length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = length + 2

    -- Message: Struct of 2 fields
    index = nasdaq_nsmequities_noi_itch_v3_0_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_nsmequities_noi_itch_v3_0.init()
end

-- Dissector for Nasdaq NsmEquities Noi Itch 3.0
function nasdaq_nsmequities_noi_itch_v3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_nsmequities_noi_itch_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_nsmequities_noi_itch_v3_0, buffer(), nasdaq_nsmequities_noi_itch_v3_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_nsmequities_noi_itch_v3_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_nsmequities_noi_itch_v3_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_nsmequities_noi_itch_v3_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq NsmEquities Noi Itch 3.0
local function nasdaq_nsmequities_noi_itch_v3_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_nsmequities_noi_itch_v3_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_nsmequities_noi_itch_v3_0
  nasdaq_nsmequities_noi_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NsmEquities Noi Itch 3.0
nasdaq_nsmequities_noi_itch_v3_0:register_heuristic("udp", nasdaq_nsmequities_noi_itch_v3_0_heuristic)

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
